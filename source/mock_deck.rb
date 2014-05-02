class Card
  attr_reader :answer, :question

  def initialize(card)
    @question = card[:question]
    @answer = card[:answer]
  end
end

card1 = Card.new({:question => "what is the first letter of the alphabet?", :answer => "a"})
card2 = Card.new({:question => "what is five times six?", :answer => "30"})
card3 = Card.new({:question => "how fat is your mom?", :answer => "so fat"})

$mock_deck = [card1, card2, card3]

