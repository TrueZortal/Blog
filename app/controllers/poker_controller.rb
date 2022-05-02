# require 'poker'

class PokerController < ApplicationController

  def show
    high_of_8_low_of_3 = %w[3S 5H 6S 8D 7H]
    high_of_8_low_of_2 = %w[2S 5D 6D 8C 7S]
    hands = [high_of_8_low_of_3, high_of_8_low_of_2]
    game = Poker.new(hands)
    # render({json: ["input is", hands , game.best_hand]})
    poker = {
      'params' => params,
      'input is' => hands,
      'best hand is' => game.best_hand
    }
    render({json: poker})
  end

end

