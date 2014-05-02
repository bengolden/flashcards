class Console
  def self.display_welcome
    puts "Get ready for some flash cards!"
  end

  def self.ask_question(question)

    puts question
  end

  def self.prompt_guess
    print "Guess: "
  end

  def self.receive_guess
    prompt_guess
    gets.chomp
    # HEY CONTROLLER, FEEL FREE TO TAKE THIS GUESS
  end

  def self.respond_to_guess
    # response = HEY CONTROLLER, WHAT RESPONSE SHOULD I GIVE?
    # puts response
    puts "dummy reponse"
  end

  def self.display_correct
    puts "Correct!"
  end

  def self.display_incorrect
    puts "Wrong!"
  end

  def self.exit
    puts "You have finished the deck."
  end

end

