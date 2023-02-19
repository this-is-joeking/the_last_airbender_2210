# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @nation = params[:nation].split('+').join(' ').capitalize
    members = AvatarFacade.nation(@nation)
    @population = members.count
    @characters = members.first(25)
  end
end
