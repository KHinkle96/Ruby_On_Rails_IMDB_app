class PagesController < ApplicationController
    def index
        @games = Game.order(created_at: :desc).limit(10)
    end
end
