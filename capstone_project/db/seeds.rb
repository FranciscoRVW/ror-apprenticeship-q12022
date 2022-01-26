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
puts '-----------------------------'
puts 'Making API calls'
puts '-----------------------------'
puts

pokemon_data = PokemonServices::GetPokemons.new

pokemon_data.call
puts "Gathered data:" 
puts "#{pokemon_data.types.size} Pokemon types."
puts "#{pokemon_data.abilities.size} Pokemon abilities."
puts "#{pokemon_data.pokemons.size} Pokemons."
