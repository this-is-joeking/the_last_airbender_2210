# frozen_string_literal: true

class SearchController < ApplicationController
  def index
    @view_nation = params[:nation].split('+').join(' ').capitalize
    # require 'pry'; binding.pry
    members = AvatarFacade.nation(@view_nation)
    @population = members.count
    @characters = members.first(25)
  end
end
