class SearchController < ApplicationController
    def index
        nation = params[:nation].titleize.gsub(" ","+")
        nation_character_info = CharactersFacade.characters_by_nation(nation)
        @total = nation_character_info[0]
        @members = nation_character_info[1]
    end
end