# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Character do
  it 'exists with attributes' do
    character_data = {
      _id: '5cf5679a915ecad153ab6976',
      allies: [
        'Zuko',
        ''
      ],
      enemies: [
        'Ozai'
      ],
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/c/c1/Iroh_smiling.png/revision/latest?cb=20130626131914',
      name: 'Iroh',
      affiliation: ' Fire Nation Fire Nation military (formerly) Fire Nation Royal Family Jasmine Dragon Order of the White Lotus Spirit World'
    }

    character = Character.new(character_data)

    expect(character).to be_a Character
    expect(character.allies).to eq(['Zuko', ''])
    expect(character.enemies).to eq(['Ozai'])
    expect(character.img_url).to eq('https://vignette.wikia.nocookie.net/avatar/images/c/c1/Iroh_smiling.png/revision/latest?cb=20130626131914')
    expect(character.name).to eq('Iroh')
    expect(character.affiliation).to eq(' Fire Nation Fire Nation military (formerly) Fire Nation Royal Family Jasmine Dragon Order of the White Lotus Spirit World')
  end
end
