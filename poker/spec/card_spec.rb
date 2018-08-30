require "card"
require "rspec"

RSpec.describe Card do
  
  subject(:card) {Card.new}
  
  describe '#initialize' do
    it 'should set a default card value if no val passed in' do
      expect(card.value).to eq('J')
      expect(card.suit).to eq('spade')
    end
    
    it 'should take a card value' do
      card2 = Card.new('K', 'spade')
      expect(card2.value).to eq('K')
      expect(card2.suit).to eq('spade')
    end
  end
  
  describe "::random" do
    it "should call Card.new on random card value" do
      card3 = Card.random
      expect(card3.value).to be_truthy
      expect(card3.suit).to be_truthy
    end
  end
  
end