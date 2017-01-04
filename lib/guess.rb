require'./lib/card'

class Guess
  attr_accessor :response, :card
  def initialize(response, card)
    @response = response
    @card = card
  end

  def correct?
   response == card.answer
  end

  def feedback
    return "Correct!" if correct? == true
    return "False!" if correct? == false
  end

end