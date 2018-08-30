class Card
  attr_reader :value,:suit
  
  CARDS = %w(2 3 4 5 6 7 8 9 10 J Q K A)
  SUITS = %w(spade heart diamond club)
  
  def initialize(value = 'J', suit = 'spade')
    @value = value
    @suit = suit
  end
  
  def self.random
    Card.new(CARDS.sample, SUITS.sample)
  end
end