require 'rails_helper'

RSpec.describe Character do 
    it 'exists' do
        data = JSON.parse(File.read('./spec/fixtures/characters_details.json'), symbolize_names: true)

        character1 = Character.new(data[0])
        character2 = Character.new(data[1])

        expect(character1).to be_a Character
        expect(character2).to be_a Character

        expect(character1.name).to eq("Chan (Fire Nation admiral)")
        expect(character1.allies).to eq(["Ozai"])
        expect(character1.enemies).to eq(["Earth Kingdom"])
        expect(character1.affiliation).to eq("Fire Nation Navy")
        
        expect(character1.photo_url).to eq nil 
        expect(character2.photo_url).to eq("https://vignette.wikia.nocookie.net/avatar/images/a/a5/Circus_master.png/revision/latest?cb=20130706153819")
    end    
end