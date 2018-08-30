require "poker"
require "rspec"

RSpec.describe Poker do
  let(:player) {double('player')#, :cards => [1,2,3,4,5])}
  subject(:game) {Poker.new(player)}
  
  describe "#initialize" do
    it "should pass out array of cards"
    
    it "should pass out 5 cards"
      # cards = [1,1,1,1,1]
      # allow(player).to receive(:cards) and_return([1,1,1,1,1])
      # player.cards
      # expect(player).to_recevie(:assout_card).with(cards)
  end
  
  # allow(player).to receive(:cards)
  
  describe 
end
