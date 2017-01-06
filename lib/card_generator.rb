require'./lib/card'
require'./lib/deck'
require'./lib/round'


class CardGenerator
  attr_reader :card_file, :array, :card

  def initialize(file)
    @card_file = file
    @card = Array.new
  end

  def cards
    File.readlines(card_file).map do |line|
        @card << line.split(",")
        line_num = line.split(",")
        Card.new(line_num[0], line_num[1].chomp)
       end
  end
end
