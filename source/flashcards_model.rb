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
  attr_reader :cards
  def initialize
    @cards = []
  end

  def build(file)
    line_array = Parser.text_to_line_array(file)
    line_array.each_slice(2) do |sides|
      @cards << Card.new({:question => sides[0], :answer => sides[1]})
    end
    return @cards
  end
end

class Card
  attr_reader :answer, :question
  def initialize(args)
    @question = args[:question]
    @answer = args[:answer]
  end
end
