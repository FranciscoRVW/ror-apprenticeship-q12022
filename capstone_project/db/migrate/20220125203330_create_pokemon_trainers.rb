class CreatePokemonTrainers < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemon_trainers do |t|
      t.belongs_to :pokemon
      t.belongs_to :trainer
      t.timestamps
    end
  end
end
