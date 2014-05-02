a = [[1,"a"],[2,"b"],[3,"c"]]
# e = a.to_enum
# p e.next   #=> 1
# p e.next   #=> 2
# p e.next   #=> 3
# p e.next == nil  #raises StopIteration
    a.each {|card|
      puts card[0]
      guess = gets.chomp
      puts card[1].to_s + guess
    }


@deck = [Card,Card,Card]

class Card
  attr_reader :question, :answer
  @question =
  @answer =
end
