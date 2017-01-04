class Card
  attr_accessor :question, :answer
  def initialize(response, answer)
    @question = question
    @answer = answer
  end
end