require'./lib/card'
require'./lib/round'
require'./lib/deck'
# require'./lib/turings_cards.txt'

card_1 = Card.new("Question: What is 5 + 5?", "10") 
card_2 = Card.new("Question: What is Rachel's favorite animal?", "redpanda") 
card_3 = Card.new("Question: What is Mike's middle name?", "nobody knows") 
card_4 = Card.new("Question: What cardboard cutout lives at Turing?", "justin bieber") 
deck = Deck.new([card_1, card_2, card_3, card_4])
round = Round.new(deck)

round.start