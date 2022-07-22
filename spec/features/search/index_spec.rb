require 'rails_helper'

RSpec.describe 'Search Index Page' do
    it "displays the members of a selected nation" do
        visit '/'
        select "Fire Nation"
        click_button "Search For Members"
        members = CharactersFacade.characters_by_nation("Fire+Nation")[1]

        expect(current_path).to eq("/search")

        expect(page).to have_content("97 Members Total")

        members.each do |member|
            expect(page).to have_content(member.name)
            expect(page).to have_content(member.enemies)
            expect(page).to have_content(member.allies)
            expect(page).to have_content(member.affiliation)
            #would have liked to do div classes and test for the photo being rendered but ran out of time!
            #I would have also liked to be accessing a vcr for this, but I was a little confused on how to only use vcr on certain tests since I do not want it to make a vcr for my service
        end
    end
    
end