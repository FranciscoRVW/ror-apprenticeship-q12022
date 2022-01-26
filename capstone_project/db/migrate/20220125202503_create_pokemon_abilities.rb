# frozen_string_literal: true

class CreatePokemonAbilities < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_abilities do |t|
      t.belongs_to :pokemon
      t.belongs_to :ability
      t.timestamps
    end
  end
end
