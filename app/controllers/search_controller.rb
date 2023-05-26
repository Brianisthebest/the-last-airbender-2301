class SearchController < ApplicationController
  def index
    @title = params[:nation].gsub("+", " ").titleize

    @parsed = MembersService.new.get_members(params["nation"])

    @members = @parsed[0..24].map do |member|
      Member.new(member)
    end
  end
end