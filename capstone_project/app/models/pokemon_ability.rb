# frozen_string_literal: true

class PokemonAbility < ApplicationRecord
  belongs_to :pokemon
  belongs_to :ability
end
