class Messages
  def welcome
    "Welcome! You're playing with 4 cards.
-------------------------------------------------"
  end

  def card_1_m
    "This is card number 1 out of 4."
  end

  def card_2_m
    "This is card number 2 out of 4."
  end

  def card_3_m
    "This is card number 3 out of 4."
  end

  def card_4_m
    "This is card number 4 out of 4."
  end

  def game_over
    "****** Game over! ******"
  end

  def percent_guessed_correctly
    "You got #{number_correct} correct guesses out of #{deck.count} for a score of #{percent_correct}%."
  end
end