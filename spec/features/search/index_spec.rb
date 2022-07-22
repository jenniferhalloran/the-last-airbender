require 'rails_helper'

RSpec.describe 'Search Index Page' do
    it "displays the members of a selected nation" do
        visit '/'
        select "Fire Nation"
        click_button "Search For Members"

        expect(current_path).to eq("/search")

        expect(page).to have_content("97 Members Total")
        
    end
    
end