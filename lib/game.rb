module RockPaperScissors

  WINNING = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  class Game

    def initialize(opts = {})
      @throw = opts[:throw]
    end

    def result
      # winning = WINNING[@throw]

    end


    private

    def computer_throw

    end

  end



end



