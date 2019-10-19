class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :update, :destroy]

  # GET /items
  def index
    @items = Item.where(game_id: Game.find_by(code: params[:game_id])[:id])

    render json: @items
  end

  # GET /items/1
  def show
    render json: @item
  end

  # POST /items
  def create
    @has_game = Game.find_by(code: item_params[:game_id]) ? true : false
    if @has_game
      @array_of_items = item_params[:code]
      @array_of_items.each { |item|
        @item = Item.new(code: item, game_id: Game.find_by(code: item_params[:game_id])[:id])
      }
      render status: :created, location: @item
    else
      render json: {status: "error", code: 400, message: "Não existe jogo com esse código" } 
    end
  end

  # PATCH/PUT /items/1
  def update
    if @item.update(item_params)
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  # DELETE /items/1
  def destroy
    @item.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def item_params
      params.require(:item).permit({:code => []}, :game_id)
    end
end
