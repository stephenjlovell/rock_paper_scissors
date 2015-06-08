class HomeController < ApplicationController

  before_action :new_game

  def show
  end

  def throw
    @game.play(params[:sign])
    render "/home/game_over"
  end

  private

  def new_game
    @game = Game.new(rules: RPS_RULES)
  end
end
