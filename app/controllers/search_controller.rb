class SearchController < ApplicationController
  def index
    nation = params["nation"]
    
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev")
    
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=100")

    parsed = JSON.parse(response.body, symbolize_names: true)
require 'pry'; binding.pry
# total count of members is 97
    parsed.map do |member|
      Member.new(member)
    end
  end
end