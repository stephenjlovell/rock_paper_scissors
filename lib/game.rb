
  RPS_RULES = {
    rock: [:scissors],
    paper: [:rock],
    scissors: [:paper]
  }

  RPSLS_RULES = {
    rock: [:scissors, :lizzard],
    paper: [:rock, :spock],
    scissors: [:paper, :lizzard],
    lizzard: [:paper, :spock],
    spock: [:rock, :scissors]
  } 

  class Game
    attr_reader :player_throw, :opponent_throw, :winning_throw, :result

    def initialize(opts = {})
      @rules = opts[:rules]
    end

    def valid_signs
      @rules.keys.map(&:to_s)
    end

    def play(player_throw)
      @player_throw = player_throw.to_sym
      @opponent_throw = @rules.keys.sample
      @result = if @player_throw == @opponent_throw
        :tie
      elsif player_wins?(@player_throw, @opponent_throw)
        @winning_throw = @player_throw
        :win
      else
        @winning_throw = @opponent_throw 
        :lose
      end
    end

    private

    def player_wins?(player_throw, opponent_throw)
      @rules[player_throw].include?(opponent_throw)
    end
  end