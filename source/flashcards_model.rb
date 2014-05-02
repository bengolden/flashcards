FILE = 'flashcard_samples.txt'
module Parser

  def self.text_to_line_array(file)
    array = File.foreach(file).each_with_object([]) do |line, collection|
      collection << line.gsub(/\n/, '')
    end
    array.delete_if { |string| string.empty? }
    return array
  end

end

class Deck
  include Parser
  @@cards = []

  # def initialize
  #   @cards = []
  # end

  # def self.cards
  # end

  def self.build(file)
    # self.cards = []
    line_array = Parser.text_to_line_array(file)
  end

    line_array.each_slice(2) do |sides|
      @@cards << Card.new({:question => sides[0], :answer => sides[1]})
    end
    @@cards
  end
end

deck = Deck.build(FILE)
p deck


class Card
  attr_reader :answer, :question

  def initialize(card)
    @question = card[:question]
    @answer = card[:answer]
  end
end

