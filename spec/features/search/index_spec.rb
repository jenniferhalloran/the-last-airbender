require 'rails_helper'

RSpec.describe 'Search Index Page' do
    xit "displays the members of a selected nation" do
        visit '/search'

        expect(page).to have_content("Members by Nation")
        expect(page).to have_content("Some name")
        
    end
    
end