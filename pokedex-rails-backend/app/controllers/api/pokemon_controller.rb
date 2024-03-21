class Api::PokemonController < ApplicationController
    before_action :find_pokemon, only: [:show]

    def types 
        render json: Pokemon::TYPES 
    end
    
    def index
        @pokemons = Pokemon.all
        render :index
    end

    def show
        render :show
    end

    private
    def pokemon_params
        params.require(:pokemon).permit(:number, :name, :attack, :defense, :poke_type, :image_url, :captured)
    end
    
    def find_pokemon 
        @pokemon = Pokemon.find_by(id: params[:id])
        unless @pokemon 
            render json: @pokemon.errors.full_messages, status: 404
        end
    end
end
