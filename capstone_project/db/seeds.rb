# frozen_string_literal: true

# This file should contain all the record creation needed to seed the databasre with its default values.
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

abilities_data = PokemonServices::GetAbilities.new
pokemon_data = PokemonServices::GetPokemons.new
types_data = PokemonServices::GetTypes.new

abilities_data.call
pokemon_data.call
types_data.call

puts 'Gathered data:'
puts "#{abilities_data.abilities.size} Pokemon abilities."
puts "#{types_data.types.size} Pokemon types."
puts "#{pokemon_data.pokemons.size} Pokemons."

puts
puts '-----------------------------'
puts 'Populating DB with data'
puts '-----------------------------'
puts
puts '-Loading abilities-'
puts
abilities_loaded = 0
abilities_data.abilities.each do |ability|
  puts "Creating #{ability} ability"
  Ability.create(name: ability)
  abilities_loaded += 1
end
puts
puts "Abilities created #{abilities_loaded}"

puts
puts '-Loading types-'
puts
types_loaded = 0
types_data.types.each do |type|
  puts "Creating #{type} type"
  Type.create(name: type)
  types_loaded += 1
end
puts
puts "Types created #{types_loaded}"

puts
puts '-Loading pokemons-'
puts
pokemons_loaded = 0


pokemon_data.pokemons.each do |pokemon|
  name = pokemon['name']
  height = pokemon['height']
  weight = pokemon['weight']
  ntl_num = pokemon['id']
  types = pokemon['types'].map { |type| type['type']['name'] }
  abilities = pokemon['abilities'].map { |ability| ability['ability']['name'] }
  puts "Loading pokemon #{name}"
   
  current_pokemon = Pokemon.create(name: name, weight: weight, height: height, nat_number: ntl_num)

  types.each { |type| current_pokemon.types << Type.find_by_name(type) }
  abilities.each { |ability| current_pokemon.abilities << Ability.find_by_name(ability)}

  pokemons_loaded += 1
end

puts
puts "Pokemons loaded: #{pokemons_loaded}"


puts
puts '-Loading trainer-'
puts

ash = Trainer.create(name:'Ash')
pokemons = %w[bulbasaur charmander squirtle]
pokemons.each {|pokemon| ash.pokemons << Pokemon.find_by_name(pokemon)}

puts "Trainer created: #{ash.name}"
puts "Pokemons loaded to trainer: #{pokemons}"
