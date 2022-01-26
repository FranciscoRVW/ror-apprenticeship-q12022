class AddDetailsToPokemon < ActiveRecord::Migration[7.0]
  def change
    add_column :pokemons, :weight, :integer
    add_column :pokemons, :height, :integer
    add_column :pokemons, :nat_number, :integer
  end
end
