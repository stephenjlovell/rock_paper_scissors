class HomeController < ApplicationController

  def show

  end

  def throw
    game = Game.new
    render "/home/game_over"
  
  end


end
