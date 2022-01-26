module PokemonServices
  class GetPokemons
    attr_accessor :types, :abilities, :pokemons

    def initialize
      @types = []
      @abilities = []
      @pokemons = []
    end

    def call
      get_types
      get_abilities
      get_pokemons
    end

    private

    def get_types
      # Type request
      request = HTTParty.get('https://pokeapi.co/api/v2/type')
      @types = request['results'].map { |type| type['name'] }
    end

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

    def get_pokemons
      [*1..9].each do |i|
        @pokemons.push( HTTParty.get("https://pokeapi.co/api/v2/pokemon/#{i}"))
      end
    end
  end # class_end
end # module_end
