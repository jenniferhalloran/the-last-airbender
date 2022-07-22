require 'rails_helper'

RSpec.describe CharactersService do
    context '#characters_by_nation(nation)' do
        it 'returns data for all members of a given nation' do
            data = CharactersService.characters_by_nation("Fire+Nation")
            
            expect(data).to be_an Array 

            data.each do |member|
                expect(member[:name]).to be_a String
                expect(member[:allies]).to be_an Array
                expect(member[:enemies]).to be_an Array
                expect(member[:affiliation]).to be_a String
                if member.has_key?(:photoUrl)
                    expect(member[:photoUrl]).to be_a String
                end
            end
        end
    end
end