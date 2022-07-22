require 'rails_helper'

RSpec.describe CharactersService do
    context '#characters_by_nation(nation)' do
        it 'returns data for all members of a given nation' do
            data = CharactersService.characters_by_nation("Fire+Nation")
            
            expect(data).to be_an Array 
            
            member = data[1]
            expect(member[:name]).to be_a String
            expect(member[:allies]).to be_an Array
            expect(member[:enemies]).to be_an Array
            expect(member[:photoUrl]).to be_a String
            expect(member[:affiliation]).to be_a String
        end
    end
end