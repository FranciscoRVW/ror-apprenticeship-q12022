# frozen_string_literal: true

class PokemonTrainer < ApplicationRecord
  belongs_to :trainer
  belongs_to :pokemon
end
