class HomeController < ApplicationController

  def show
  end

  def throw
    @game = Game.new(params)
    render "/home/game_over"
  end

end
