
  RPS_RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  class Game

    attr_reader :player_throw, :opponent_throw, :result

    def initialize(opts = {})
      @player_throw = opts[:sign].to_sym
      @result = result(@player_throw)
    end

    def message
      case @result
      when :win
        "#{@player_throw.to_s.titleize} beats #{@opponent_throw}... You've won! Congratulations!"
      when :lose
        "#{@opponent_throw.to_s.titleize} beats #{@player_throw}... You lose. Sorry about that."
      when :tie
        "You both threw #{@player_throw}... It's a tie."
      end
    end

    private

    def result(player_throw)
      @opponent_throw = [:rock, :paper, :scissors][rand(3)]
      if player_throw == @opponent_throw
        :tie
      elsif RPS_RULES[player_throw] == @opponent_throw
        :win
      else 
        :lose
      end
    end

  end