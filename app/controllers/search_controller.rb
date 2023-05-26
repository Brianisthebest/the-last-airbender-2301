class SearchController < ApplicationController
  def index
    nation = params["nation"]
    
    conn = Faraday.new(url: "https://last-airbender-api.fly.dev") do |faraday|
      params[:perPage] = 100
    end
    response = conn.get("/api/v1/characters?affiliation=#{nation}")

    require 'pry'; binding.pryq
  end
end