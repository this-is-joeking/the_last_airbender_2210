# frozen_string_literal: true

class Character
  attr_reader :name,
              :img_url,
              :allies,
              :enemies,
              :affiliation

  def initialize(character_data)
    @name        = character_data[:name]
    @img_url     = character_data[:photoUrl]
    @allies      = character_data[:allies]
    @enemies     = character_data[:enemies]
    @affiliation = character_data[:affiliation]
  end
end
