# frozen_string_literal: true

# Seeder for pokemon model
def pokemon_seeder
  request = Httparty.get('https://pokeapi.co/api/v2/type')
  puts request['results']
end
