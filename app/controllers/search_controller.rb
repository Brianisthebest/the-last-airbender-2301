class SearchController < ApplicationController
  def index
    @title = params[:nation].gsub("+", " ").titleize
    @members = MembersFacade.new.get_members(params["nation"])
  end
end