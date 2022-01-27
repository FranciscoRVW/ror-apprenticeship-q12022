# frozen_string_literal: true

module PokemonServices
  class GetPokemons
    attr_accessor :pokemons

    def initialize
      @pokemons = []
    end

    def call
      get_pokemons
    end

    private

    def get_pokemons
      [*1..9].each do |i|
        @pokemons.push(HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{i}"))
      end
    end
  end
end
