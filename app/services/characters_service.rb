class CharactersService 
    def self.connection 
        Faraday.new(url: 'https://last-airbender-api.herokuapp.com')
    end

    def self.characters_by_nation(nation)
        response = connection.get("/api/v1/characters?affiliation=#{nation}&perPage=500")
        data = JSON.parse(response.body, symbolize_names: true)
    end
end