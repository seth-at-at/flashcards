require'./test/test_helper'
require'./lib/card'

class CardTest < Minitest::Test
  def test_can_set_up_new_card
    card = Card.new("What is the capital of Alaska?", "Juneau")
    assert_equal "What is the capital of Alaska?", card.question
    assert_equal "Juneau", card.answer
  end
end