class AddDefaultValuesToPokemon < ActiveRecord::Migration
  def change
  	change_column_default :pokemons, :health, 100
  	change_column_default :pokemons, :level, 1
  end
end
