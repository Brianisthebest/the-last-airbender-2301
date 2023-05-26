class SearchController < ApplicationController
  def index
    nation = params["nation"]
    
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev")
    
    response = conn.get("/api/v1/characters?affiliation=#{nation}&perPage=100")

    @parsed = JSON.parse(response.body, symbolize_names: true)
    # total count of members is 97
    @members = @parsed[0..24].map do |member|
      Member.new(member)
    end
    require 'pry'; binding.pry
  end
end