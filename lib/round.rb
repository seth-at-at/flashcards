require'pry'
require'./lib/guess'
require'./lib/messages'

class Round
  attr_reader :deck, :guesses, :number_correct, :number_incorrect

  def initialize(cards)
    @deck = cards
    @guesses = []
    @number_correct = 0
    @number_incorrect = 0
  end

  def current_card
    x = guesses.count
    deck.cards[x]
  end

  def record_guess(response)
    guess = Guess.new(response, current_card)
    guesses << guess
      if guess.correct? == true
        @number_correct += 1
         else
           @number_incorrect += 1
      end
  end

  def percent_correct
    (@number_correct.to_f/guesses.count) * 100
  end

  def start
    puts Messages.new.welcome
    puts current_card.question
    gets.chomp.downcase
    puts guess.feedback 
  end
end