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
    num = guesses.count
    deck.cards[num]
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
    puts Messages.new.card_1_m
    puts current_card.question
    user_guess = gets.chomp
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.card_2_m
    puts current_card.question
    user_guess = gets.chomp
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.card_3_m
    puts current_card.question
    user_guess = gets.chomp
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.card_4_m
    puts current_card.question
    user_guess = gets.chomp
    current_guess = Guess.new(user_guess, current_card)
    record_guess(user_guess)
    puts current_guess.feedback

    puts Messages.new.game_over
    puts "You got #{number_correct} correct guesses out of #{deck.count} for a score of #{percent_correct}%."
  end
end