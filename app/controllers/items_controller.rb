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
  #Done and Done
  def create
    @item = Item.create(item_params)
    current_company.locations.where(id:params[:locationId]).first.items << @item
    # Delete the thing below this untrustworthy piece of crap made me rewrite this so much just to find out this was the problem
    # respond_to do |format|
    #   if @item.save
    #     format.html { redirect_to @item, notice: "Item was successfully created." }
    #     format.json { render :show, status: :created, location: @item }
    #   else
    #     format.html { render :new, status: :unprocessable_entity }
    #     format.json { render json: @item.errors, status: :unprocessable_entity }
    #   end
    # end
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
    toLocation = current_company.locations.where(address: params[:recepLocation]).first
    location = current_company.locations.where(id: params[:locationId]).first
    if(location.is_supplier === true)
      updatedItem = location.items.where(name: params[:name]).first
      toUpdatedItem = toLocation.items.where(name: params[:name]).first
      if(toUpdatedItem.exists? && updatedItem.amount > params[:amount])
        updatedItem.increment!(:amount, -params[:amount])
        toUpdatedItem.increment!(:amount, params[:amount])
      elsif(updatedItem.amount > params[:amount])
        updatedItem.increment!(:amount, -params[:amount])
        item = Item.create(name: params[:name], amount:params[:amount], restockPoint: 0)
        toLocation << item
      end
    end
  end

  # using and creating items yourself NOPE NOT DONE
  def changeItem
    locationItem = current_company.locations.where(id: params[:locationId]).first.items.where(id: params[:id]).first
    if(params[:amount] > 0)
      locationItem.increment!(:amount, params[:amount])
    else
      locationItem.increment!(:amount, --params[:amount])
      if(locationItem.amount <= locationItem.restockPoint)
        previousSupplierItem = Location.where(id:locationItem.lastSupplier).first.items.where(name:locationItem.name).first
        if(previousSupplierItem.amount > (locationItem.restockTo - locationItem.amount))
          previousSupplierItem.increment!(:amount, -(locationItem.restockTo - locationItem.amount))
          locationItem.location.company.increment!(:cash, -previousSupplierItem.price * (locationItem.restockTo - locationItem.amount))
          locationItem.update(amount: locationItem.restockTo)
        else
          locationItem.increment!(:amount, previousSupplierItem.amount)
          locationItem.location.company.increment!(:cash, -previousSupplierItem.price * previousSupplierItem.amount)
          previousSupplierItem.amount = 0
        end
        if(previousSupplierItem.amount <= previousSupplierItem.restockPoint)
          changeItemSupplier(previousSupplierItem.location.id, previousSupplierItem.id)
        end
      end
    end
  end

# If you're thinking why I didn't just make the above method recursive
# Its because its a precautionary to stop random changes from unauthorised users
# Also I don't really know how to recursively call with a new current user
# With a controller method thus the method below
  def changeItemSupplier(supplierId, itemId)
    locationItem = current_company.location.where(address: params[:lastSupplier]).first.items.where(id: itemId).first
    previousSupplierItem = Location.where(id:locationItem.lastSupplier).first.items.where(name:locationItem.name).first
    if(previousSupplierItem.amount > (locationItem.restockTo - locationItem.amount))
      previousSupplierItem.increment!(:amount, -(locationItem.restockTo - locationItem.amount))
      locationItem.location.company.increment!(:cash, -previousSupplierItem.price * (locationItem.restockTo - locationItem.amount))
      locationItem.update(amount: locationItem.restockTo)
    else
      locationItem.increment!(:amount, previousSupplierItem.amount)
      locationItem.location.company.increment!(:cash, -previousSupplierItem.price * previousSupplierItem.amount)
      previousSupplierItem.amount = 0
    end
    if(previousSupplierItem.amount <= previousSupplierItem.restockPoint)
      changeItemSupplier(previousSupplierItem.location.id, previousSupplierItem.id)
    end
  end

# deleting items
  def deleteItem
    current_company.locations.where(id: params[:locationId]).first.items.where(id: params[:id]).first.destroy
  end

  private
    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:amount, :name, :restockPoint, :restockTo, :stock_id, :autoRestock, :lastSupplier, :recepLocation, :recepCompany, :locationId, :price)
    end
end
