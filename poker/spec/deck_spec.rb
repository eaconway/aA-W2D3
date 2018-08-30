require "deck"
require "rspec"

RSpec.describe Deck do
  subject(:deck) {Deck.new}
  
  describe "#initialize" do
    it "should be an array of 52 cards" do
      expect(deck.cards.length).to eq(52)
    end

  end
  
  describe "cards_uniq?" do
    it "check deck is full of unique cards" do
      expect(deck.cards_uniq?).to be true
    end
  end
  
  describe "#shuffle" do
    it "should shuffle the cards" do
      initial_cards = deck.cards.dup
      deck.shuffle
      expect(deck.cards).to_not eq(initial_cards)
    end
  end
  
end