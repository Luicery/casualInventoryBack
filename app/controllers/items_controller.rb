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
# Giving supplies to other locations COMPLETELY DONE
  def giveItem
    toLocation = Company.where(name: params[:recepCompany]).first.locations.where(address: params[:recepLocation]).first
    location = current_company.locations.where(id: params[:locationId]).first
    if(location.is_supplier === true)
      updatedItem = location.items.where(name: params[:name]).first
      toUpdatedItem = toLocation.items.where(name: params[:name]).first
      if(toUpdatedItem.present? && updatedItem.amount > params[:amount].to_i)
        updatedItem.increment!(:amount, -params[:amount].to_i)
        toUpdatedItem.increment!(:amount, params[:amount].to_i)
      elsif(updatedItem.amount > params[:amount].to_i)
        updatedItem.increment!(:amount, -params[:amount].to_i)
        item = Item.create(name: params[:name], amount:params[:amount].to_i, price: updatedItem.price, autoRestock: false, lastSupplier:location.id)
        toLocation.items << item
      end
      if(updatedItem.amount <= updatedItem.restockPoint)
        changeItemSupplier(updatedItem.id)
      end
    end
  end

  # using and creating items yourself Now works on others too I am pretty sure less i missed something
  def changeItem
    locationItem = current_company.locations.where(id: params[:locationId]).first.items.where(id: params[:id]).first
    locationItem.increment!(:amount, params[:amount].to_i)
    if(locationItem.amount <= locationItem.restockPoint && locationItem.lastSupplier != locationItem.location.id)
      previousSupplierItem = Location.where(id:locationItem.lastSupplier).first.items.where(name:locationItem.name).first
      if(previousSupplierItem.amount > (locationItem.restockTo - locationItem.amount))
        previousSupplierItem.increment!(:amount, -(locationItem.restockTo - locationItem.amount))
        # PRETEND CASH ISN"T A THING YET
        # locationItem.location.company.increment!(:cash, -previousSupplierItem.price * (locationItem.restockTo - locationItem.amount))
        locationItem.update(amount: locationItem.restockTo)
      else
        locationItem.increment!(:amount, previousSupplierItem.amount)
        # PRETEND CASH ISN"T A THING YET
        # locationItem.location.company.increment!(:cash, -previousSupplierItem.price * previousSupplierItem.amount)
        previousSupplierItem.amount = 0
      end
      if(previousSupplierItem.amount <= previousSupplierItem.restockPoint)
        changeItemSupplier(previousSupplierItem.id)
      end
    end
  end

# If you're thinking why I didn't just make the above method recursive
# Its because its a precautionary to stop random changes from unauthorised users
# Also I don't really know how to recursively call with a new current user
# With a controller method thus the method below
  def changeItemSupplier(itemId)
    locationItem = Item.where(id: itemId)
    previousSupplierItem = Location.where(id:locationItem.lastSupplier).first.items.where(name:locationItem.name).first
    if(locationItem != previousSupplierItem)
      if(previousSupplierItem.amount > (locationItem.restockTo - locationItem.amount))
        previousSupplierItem.increment!(:amount, -(locationItem.restockTo - locationItem.amount))
        # PRETEND CASH ISN"T A THING YET
        # locationItem.location.company.increment!(:cash, -previousSupplierItem.price * (locationItem.restockTo - locationItem.amount))
        locationItem.update(amount: locationItem.restockTo)
      else
        locationItem.increment!(:amount, previousSupplierItem.amount)
        # PRETEND CASH ISN"T A THING YET
        # locationItem.location.company.increment!(:cash, -previousSupplierItem.price * previousSupplierItem.amount)
        previousSupplierItem.amount = 0
      end
      if(previousSupplierItem.amount <= previousSupplierItem.restockPoint)
        changeItemSupplier(previousSupplierItem.id)
      end
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
