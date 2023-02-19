# frozen_string_literal: true

require 'rails_helper'

RSpec.describe AvatarService do
  before(:each) do
    stub_request(:get, 'https://last-airbender-api.fly.dev/api/v1/characters?affiliation=Fire%20nation&perPage=0')
      .to_return(status: 200, body: File.read('spec/fixtures/fire_nation_members.json'))
  end

  describe '#nation()' do
    it 'returns character details for the nation given' do
      response = AvatarService.nation('Fire nation')

      expect(response).to be_a Array
      response.each do |character_data|
        expect(character_data).to be_a Hash
        expect(character_data).to have_key(:allies)
        expect(character_data[:allies]).to be_a Array
        expect(character_data).to have_key(:enemies)
        expect(character_data[:enemies]).to be_a Array
        expect(character_data).to have_key(:name)
        expect(character_data[:name]).to be_a String
        expect(character_data).to have_key(:affiliation)
        expect(character_data[:affiliation]).to be_a String
      end
    end
  end
end
