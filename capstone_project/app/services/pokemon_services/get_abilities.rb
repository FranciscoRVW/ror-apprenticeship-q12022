# frozen_string_literal: true

module PokemonServices
  class GetAbilities
    attr_accessor :abilities

    def initialize
      @abilities = []
    end

    def call
      get_abilities
    end

    private

    def get_abilities
      ability_response_results = []
      endpoint = 'https://pokeapi.co/api/v2/ability'
      while endpoint
        ability_response = HTTParty.get(endpoint)
        ability_response_results << ability_response['results']
        endpoint = ability_response['next']
      end

      flat_ability_response = ability_response_results.flatten

      flat_ability_response.each do |ability|
        @abilities << ability['name']
      end
    end
  end
end
