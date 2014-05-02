require_relative 'flashcards_model'
require_relative 'console_fc'
# require_relative 'mock_deck'

#FILE = 'flashcard_samples.txt'

class FlashCardController
  attr_reader :guess, :answer
  attr_accessor :deck

  def run!
    load_deck
    display_welcome
    deck.cards.each do |card|
      ask_question(card)
      receive_guess
      print_response(card)
    end
    exit
  end
  private
  def load_deck
    @deck = Deck.new
    @deck.build(FILE)
  end

  def display_welcome
    Console.display_welcome
  end

  def ask_question(card) # HEY CONSOLE, ASK A QUESTION
    Console.ask_question(card.question)
  end

  def receive_guess
    @guess = Console.receive_guess
  end

  def print_response(card)
    if guess == card.answer
      Console.display_correct
    else
      Console.display_incorrect
    end
  end

  def exit
    Console.exit
  end
end

test = FlashCardController.new
test.run!
