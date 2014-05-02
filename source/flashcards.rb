require_relative 'flashcards_model'

FILE = 'flashcard_samples.txt'

class FlashCardController
  def run!
    load_deck
    display_welcome
    deck.each do |card|
      ask_question(card.question)
      receive_guess
      print_response(card.answer)
    end
  end
  private
  attr_reader :guess, :answer, :deck
  def load_deck
    @deck = Deck.build(FILE)
  end

  def display_welcome
    Console.display_welcome
  end

  def ask_question(current_question)
    Console.ask_question(current_question)
  end

  def receive_guess
    @guess = Console.receive_guess
  end

  def print_response(answer)
    if guess == answer
      Console.display_correct
    else
      Console.display_incorrect
    end
  end
end
