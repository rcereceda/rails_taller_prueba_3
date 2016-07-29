class PokemonsController < ApplicationController
  def index
  	@pokemons = Pokemon.where(user: current_user) 
  end
end
