class CharactersFacade
    def self.characters_by_nation(nation)
        nation_character_data = CharactersService.characters_by_nation(nation)
        total = nation_character_data.count

        characters = nation_character_data[0..24].map do |character_data|
            Character.new(character_data)
        end

        [total, characters]
    end
end