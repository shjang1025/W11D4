class Api::ItemsController < ApplicationController
    before_action :find_item, only: [:destroy, :update]
    def index
        @items = Pokemon.find_by(id:params[:pokemon_id]).items
        render :index
    end

    def destroy
        @item.destroy
        render json: @item

    end

    def update

    end

    private

    def item_params

        params.require(:item).permits(:pokemon_id, :name, :price, :happiness, :image_url)
    end

    def find_item

        @item = Item.find_by(id: params[:id])
    end
end
