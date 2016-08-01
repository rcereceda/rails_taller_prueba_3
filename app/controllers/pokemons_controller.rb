class PokemonsController < ApplicationController
	before_action :set_pokemon, only: [:levelup, :leveldown]
	before_action :authenticate_user!

  def index
  	@pokemons = current_user.pokemons
  	@catalogs = Catalog.all
  	@pokemon = Pokemon.new
  end

  def create
  	#render json: params
  	#@catalog = Catalog.find(params[:pokemon][:catalog_id])
  	#@pokemon = Pokemon.new(catalog: @catalog, user: current_user, level: 5)
  	@pokemon = Pokemon.new(pokemon_params)
    @pokemon.user = current_user
  	@pokemon.save
  	redirect_to pokemons_path
  end

  def levelup
  	@pokemon.level += 1
  	@pokemon.save
  	redirect_to pokemons_path
  end

  def leveldown
  	@pokemon.level -= 1
  	@pokemon.save
  	redirect_to pokemons_path
  end

  private
    def set_pokemon
      @pokemon = Pokemon.find(params[:id])
    end

    def pokemon_params
      params.require(:pokemon).permit(:level, :catalog_id)
    end
end
