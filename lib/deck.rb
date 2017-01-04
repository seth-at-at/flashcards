require'./lib/card'
require'pry'
class Deck
  attr_reader :deck, :count
  
  def initialize(deck)
    @deck = deck
  end

  def cards
    deck
  end

  def count
    deck.count
  end
end