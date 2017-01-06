require'./lib/card'
require'./lib/round'
require'./lib/deck'
require'./lib/card_generator'

cards = CardGenerator.new("./lib/turings_cards.txt").cards
deck = Deck.new(cards)
round = Round.new(deck)

round.start
