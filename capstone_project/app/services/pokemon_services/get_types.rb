# frozen_string_literal: true

module PokemonServices
  class GetTypes
    attr_accessor :types

    def initialize
      @types = []
    end

    def call
      get_types
    end

    private

    def get_types
      # Type request
      request = HTTParty.get('https://pokeapi.co/api/v2/type')
      @types = request['results'].map { |type| type['name'] }
    end
  end
end
