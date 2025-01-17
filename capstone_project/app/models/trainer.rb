# frozen_string_literal: true

class Trainer < ApplicationRecord
  has_many :pokemon_trainers
  has_many :pokemons, through: :pokemon_trainers
end
