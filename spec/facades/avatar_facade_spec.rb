# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AvatarFacade do
  before(:each) do
    stub_request(:get, 'https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire%20nation&perPage=0')
      .to_return(status: 200, body: File.read('spec/fixtures/fire_nation_members.json'))
  end

  describe '#nation()' do
    it 'returns an array of character objects' do
      characters = AvatarFacade.nation('Fire nation')

      characters.each do |character|
        expect(character).to be_a Character
      end
    end
  end
end
