require 'rails_helper'

RSpec.describe 'Search Index Page' do
    it "displays the members of a selected nation" do
        visit '/'
        select "Fire Nation"
        
        expect(current_path).to eq(/search)

        expect(page).to have_content("Members by Nation")
        expect(page).to have_content("Some name")
        
    end
    
end