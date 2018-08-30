require_relative 'card'

class Deck
  
  attr_accessor :cards
  
  def initialize
    @cards = build_deck
  end
  
  def build_deck
    cards_created = []
    cards_tracked = []
    
    while cards_created.length < 52
      input = Card.random
      
      unless cards_tracked.include?([input.value, input.suit])
        cards_created.push(input) 
        cards_tracked << [input.value, input.suit]
      end
    end
    cards_created
  end  
  
  def cards_uniq?
    cards_tracked = []
    
    @cards.each do |card|
      return false if cards_tracked.include?([card.value, card.suit])
      cards_tracked << [card.value, card.suit]
    end
    true
  end
  
  def shuffle
    @cards.shuffle!
  end
  
  
  
end