class SearchesController < ApplicationController
end

def index
    @query = params[:q]
    @games = Game.where("body ILIKE ?", "%#{@query}%").order(created_at: :desc)
  end
end