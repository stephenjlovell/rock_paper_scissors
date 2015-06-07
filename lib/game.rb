
  WINNING = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  MESSAGES = {
    win: "You've won! Congratulations!",
    lose: "You lose. Sorry about that.",
    tie: "It's a tie..."
  }

  class Game

    def initialize(opts = {})
      @throw = opts[:sign].to_sym
      @result = result(@throw)
    end

    def message
      MESSAGES[@result]
    end

    private

    def result(player_throw)
      opponent_throw = [:rock, :paper, :scissors][rand(3)]
      if player_throw == opponent_throw
        :tie
      elsif WINNING[player_throw] == opponent_throw
        :win
      else 
        :lose
      end
    end

  end