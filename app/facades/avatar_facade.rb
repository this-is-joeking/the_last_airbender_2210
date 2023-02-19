# frozen_string_literal: true

class AvatarFacade
  def self.nation(nation_name)
    characters_data = AvatarService.nation(nation_name)
    characters_data.map { |character_data| Character.new(character_data) }
  end
end
