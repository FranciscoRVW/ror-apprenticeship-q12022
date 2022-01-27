# frozen_string_literal: true

class Pokemon < ApplicationRecord
  has_many :pokemon_trainers
  has_many :trainers, through: :pokemon_trainers

  has_many :pokemon_abilities
  has_many :abilities, through: :pokemon_abilities

  has_many :pokemon_types
  has_many :types, through: :pokemon_types

  validates :name, presence: true, uniqueness: true, confirmation: {case_sensitive: true}
end
