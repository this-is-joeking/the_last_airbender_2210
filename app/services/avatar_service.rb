# frozen_string_literal: true

class AvatarService
  def self.conn
    Faraday.new(url: 'https://last-airbender-api.fly.dev')
  end

  def self.nation(nation_name)
    response = conn.get('/api/v1/characters') do |req|
      req.params['affiliation'] = nation_name
      req.params['perPage'] = 0
    end
    parsed = JSON.parse(response.body, symbolize_names: true)
  end
end
