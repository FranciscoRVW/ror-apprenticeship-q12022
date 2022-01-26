# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts '-----------------------------'
puts 'Beginning seeding process'
puts '-----------------------------'
puts
# require_relative './model_seeders/pokemon_seeder'


# Seeder for Type model

#   puts '-----------------------------'
#   puts 'Type seeding process'
#   puts '-----------------------------'
#   puts


pokemon_data = PokemonServices::GetPokemons.new

pokemon_data.call
p pokemon_data.types
p pokemon_data.abilities.size
