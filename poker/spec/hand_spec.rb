require "hand"
require "rspec"

RSpec.describe Hand do
  let(:card1) { double("card1", :value => "A", :suit => "spade")}
  let(:card2) { double("card2", :value => "10", :suit => "spade")}
  let(:card3) { double("card3", :value => "7", :suit => "spade")}
  let(:card4) { double("card4", :value => "6", :suit => "heart")}
  let(:card5) { double("card5", :value => "7", :suit => "heart")}
  
  
  subject(:hand) {Hand.new([card1, card2, card3, card4, card5])}
  
  describe "#initialize" do
    it "should have 5 cards" do
      expect(hand.length).to be(5)
    end
  end
  
  describe "#discard" do
    it "should take in parameter of which card to drop" do
      expect { hand.discard('string') }.to raise_error('I need a card.')
    end
    
    it "should throw an error if the input is not an array of length 2" do
      expect {hand.discard(['K', 'S', 'J']) }.to raise_error("I only need val and suit")
    end
    
    it 'should return the card object' do
      # c = Card.new('A', 'spade')
      expect(hand.discard("A", 'spade').to eq(card1) 
    end
  end
end