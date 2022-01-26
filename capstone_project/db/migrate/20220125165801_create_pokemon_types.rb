# frozen_string_literal: true

class CreatePokemonTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_types do |t|
      t.belongs_to :pokemon
      t.belongs_to :type
      t.timestamps
    end
  end
end
