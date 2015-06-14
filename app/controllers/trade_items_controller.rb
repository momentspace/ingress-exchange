class TradeItemsController < ApplicationController
  before_action :set_trade_item, only: [:show, :edit, :update, :destroy]

  # GET /trade_items
  # GET /trade_items.json
  def index
    @trade_items = TradeItem.all
  end

  # GET /trade_items/1
  # GET /trade_items/1.json
  def show
  end

  # GET /trade_items/new
  def new
    @trade_item = TradeItem.new
  end

  # GET /trade_items/1/edit
  def edit
  end

  # POST /trade_items
  # POST /trade_items.json
  def create
    @trade_item = TradeItem.new(trade_item_params)

    respond_to do |format|
      if @trade_item.save
        format.html { redirect_to @trade_item, notice: 'Trade item was successfully created.' }
        format.json { render :show, status: :created, location: @trade_item }
      else
        format.html { render :new }
        format.json { render json: @trade_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /trade_items/1
  # PATCH/PUT /trade_items/1.json
  def update
    respond_to do |format|
      if @trade_item.update(trade_item_params)
        format.html { redirect_to @trade_item, notice: 'Trade item was successfully updated.' }
        format.json { render :show, status: :ok, location: @trade_item }
      else
        format.html { render :edit }
        format.json { render json: @trade_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /trade_items/1
  # DELETE /trade_items/1.json
  def destroy
    @trade_item.destroy
    respond_to do |format|
      format.html { redirect_to trade_items_url, notice: 'Trade item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_trade_item
      @trade_item = TradeItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def trade_item_params
      params.require(:trade_item).permit(:number, :item_id)
    end
end
