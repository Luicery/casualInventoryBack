class ItemsController < ApplicationController
  before_action :set_item, only: %i[ show edit update destroy ]
  before_action :authenticate_user
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
    @item = Item.new(item_params)
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
    toLocation = Company.where(name: params[:recepCompany]).first.locations.where(address: [:recepLocationId])
    location = current_user.locations.where(address: params[:locationId]).first
    if(location.is_supplier === true)
      updatedItem = location.stock.items.where(name: params[:name]).first
      toUpdatedItem = toLocation.first.stock.items.where(name: params[:name]).first
      if(toUpdatedItem.exists? && updatedItem.first.amount > params[:amount])
        updatedItem.update(amount: updatedItem.first.amount-params[:amount])
        toUpdatedItem.update(amount: toUpdatedItem.first.amount+params[:amount])
      elsif(updatedItem.first.amount > params[:amount])
        updatedItem.update(amount: updatedItem.first.amount-params[:amount])
        item = Item.create(name: params[:name], amount:[:amount], restock: 0)
        toLocation.first.stock << item
      end
    end
  end

  # using and creating items yourself not done
  def changeItem
    locationItem = current_user.locations.where(address: params[:recepLocationId]).first.stock.items.where(id: params[:id]).first
    if(params[:amount] > 0)
      locationItem.update(amount: locationItem.amount+params[:amount])
    else
      locationItem.update(amount: locationItem.amount-params[:amount])
      if(locationItem.amount < locationItem.restock)
        # restock function
        # probably send a post to another controller to do
      end
    end
  end

# deleting items
  def deleteItem
    Item.destroy(id:params[:id])
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def item_params
      params.require(:item).permit(:amount, :name, :restock, :stock_id, :autoRestock, :lastSupplier, :recepLocationId, :recepCompany, :locationId)
    end
end
