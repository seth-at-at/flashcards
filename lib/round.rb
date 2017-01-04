require'pry'
require'./lib/guess'

class Round
  attr_reader :deck, :guesses

  def initialize(cards)
    @deck = cards
    @guesses = []
  end

  def current_card
    x = guesses.count
    deck.cards[x]
  end

  def record_guess(response)
    guess = Guess.new(response, current_card)
    guesses << guess
  end
end