class ItemsController < ApplicationController
  before_action :authenticate_company
  # GET /items or /items.json
  def index
    @items = Item.all
  end

  # GET /items/1 or /items/1.json
  def show
  end

  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items or /items.json
  def create
    @item = Item.create(name:name, price:price, amount:amount)
    @item.location = current_company.location.where(id:locationId)
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: "Item was successfully created." }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1 or /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: "Item was successfully updated." }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end
#Change all of it if I can post in all my data
# trading supplies done
  def tradeItem
    toLocation = current_company.locations.where(address: [:recepLocation]).first
    location = current_company.locations.where(id: params[:locationId]).first
    if(location.is_supplier === true)
      updatedItem = location.stock.items.where(name: params[:name]).first
      toUpdatedItem = toLocation.stock.items.where(name: params[:name]).first
      if(toUpdatedItem.exists? && updatedItem.amount > params[:amount])
        updatedItem.increment!(:amount, -params[:amount])
        toUpdatedItem.increment!(:amount, params[:amount])
      elsif(updatedItem.amount > params[:amount])
        updatedItem.increment!(:amount, -params[:amount])
        item = Item.create(name: params[:name], amount:[:amount], restock: 0)
        toLocation.stock << item
      end
    end
  end

  # using and creating items yourself NOPE NOT DONE
  def changeItem
    locationItem = current_company.locations.where(id: params[:locationId]).first.stock.items.where(id: params[:id]).first
    if(params[:amount] > 0)
      locationItem.increment!(:amount, params[:amount])
    else
      locationItem.increment!(:amount, --params[:amount])
      if(locationItem.amount <= locationItem.restock)
        previousSupplierItem = Location.where(id:locationItem.lastSupplier).first.stock.items.where(name:locationItem.name).first
        if(previousSupplierItem.amount > (locationItem.restockAmount - locationItem.amount))
          previousSupplierItem.increment!(:amount, -(locationItem.restockAmount - locationItem.amount))
          locationItem.stock.location.company.increment!(:cash, -previousSupplierItem.price * (locationItem.restockAmount - locationItem.amount))
          locationItem.update(amount: locationItem.restockAmount)
        else
          locationItem.increment!(:amount, previousSupplierItem.amount)
          locationItem.stock.location.company.increment!(:cash, -previousSupplierItem.price * previousSupplierItem.amount)
          previousSupplierItem.amount = 0
        end
        if(previousSupplierItem.amount <= previousSupplierItem.restock)
          changeItemSupplier(previousSupplierItem.stock.location.id, previousSupplierItem.id)
        end
      end
    end
  end

# If you're thinking why I didn't just make the above method recursive
# Its because its a precautionary to stop random changes from unauthorised users
# Also I don't really know how to recursively call with a new current user
# With a controller method thus the method below
  def changeItemSupplier(supplierId, itemId)
    locationItem = Location.where(address: supplierId).first.stock.items.where(id: itemId).first
    previousSupplierItem = Location.where(id:locationItem.lastSupplier).first.stock.items.where(name:locationItem.name).first
    if(previousSupplierItem.amount > (locationItem.restockAmount - locationItem.amount))
      previousSupplierItem.increment!(:amount, -(locationItem.restockAmount - locationItem.amount))
      locationItem.stock.location.company.increment!(:cash, -previousSupplierItem.price * (locationItem.restockAmount - locationItem.amount))
      locationItem.update(amount: locationItem.restockAmount)
    else
      locationItem.increment!(:amount, previousSupplierItem.amount)
      locationItem.stock.location.company.increment!(:cash, -previousSupplierItem.price * previousSupplierItem.amount)
      previousSupplierItem.amount = 0
    end
    if(previousSupplierItem.amount <= previousSupplierItem.restock)
      changeItemSupplier(previousSupplierItem.stock.location.id, previousSupplierItem.id)
    end
  end

# deleting items
  def deleteItem
    Item.destroy(id:params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:amount, :name, :restock, :stock_id, :autoRestock, :lastSupplier, :recepLocation, :recepCompany, :locationId, :price)
    end
end
