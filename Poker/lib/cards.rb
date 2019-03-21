require 'byebug'

class Card
  SUITS = %w(♣️ ♦️ ♥️ ♠️)
  RANKS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  attr_reader :value
  def initialize(suit, rank, value)
    @suit = suit
    @rank = rank 
    @value = value
  end 

  def to_s
    "#{SUITS[@suit]} #{RANKS[@rank]}"
  end  
end 

class Deck
  attr_reader :cards

  def initialize()
    @cards = get_cards
    
  end

  def get_cards
   new_cards = []
    val = 1
   (0...4).each do |suit|
     (0...13).each do |rank|
       new_cards << Card.new(suit, rank, val)
       val += 1
     end 
   end 
     return new_cards
  end
  
  def [](idx)
    raise "Index should be between 1 and 52 inclusive" if (idx > 52 || idx < 1)
    @cards[idx]
  end

  def count
    @cards.length
  end

  def shuffle!
    @cards.shuffle!
  end

  def sort!
    @cards.sort_by {|card| card.value }
  end

  def render
    (0...@cards.length).each do |idx|
      print "#{@cards[idx]}\t"
      print "\n" if (idx + 1) % 13 == 0
  end
end

end 

deck = Deck.new
puts "Deck Size: #{deck.cards.length}"
deck.render
# deck.cards.each do |card|
#   p card
#   puts
# end





  