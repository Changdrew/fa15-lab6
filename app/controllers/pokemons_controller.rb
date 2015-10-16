class PokemonsController < ApplicationController
  def index
    @pokemons = Pokemon.all
  end

  def edit
    @pokemons = Pokemon.find(params[:id])
  end

  def pokemon_params
    params.require(:pokemon).permit(:name, :description, :level, :user_id)
  end
end
