class Catalog < ActiveRecord::Base
	has_many :pokemons
	has_many :users, through: :pokemons

	has_many :reports
	#has_many :users, through: :reports
end
