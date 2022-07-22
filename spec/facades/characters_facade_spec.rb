require 'rails_helper'

RSpec.describe CharactersFacade do 
    context '#characters_by_nation(nation)' do
        it "returns character objects that belong to the nation given" do
            characters = CharactersFacade.characters_by_nation("Fire+Nation")

            expect(characters.count).to eq(2)
            expect(characters[1]).to be_all(Character)
            expect(characters[1].count).to eq(25)
            expect(characters[0]).to eq(97)
        end
    end
end