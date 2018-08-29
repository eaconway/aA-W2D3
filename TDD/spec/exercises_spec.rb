require 'rspec'
require 'exercises'

RSpec.describe "exercises" do
  let(:test_array) { [-1,0,2,-2, 1, 1] }
  describe "#my_uniq" do
    it "should take in an array" do
      # expect { my_uniq(test_array) }.to_not raise_error('input not an array')
      expect { my_uniq("blue")}.to raise_error('input not an array')
    end
    
    it "should return an array" do
      expect(my_uniq(test_array)).to be_instance_of Array
    end
    
    it "should return uniq elements" do
      expect(my_uniq(test_array)).to eq([-1,0,2,-2, 1])
    end
    
  end
  
  describe "#two_sum" do
    it "should take in an array" do
      # expect { my_uniq(test_array) }.to_not raise_error('input not an array')
      expect { my_uniq("blue")}.to raise_error('input not an array')
    end
    
    it "should return an array" do
      expect(my_uniq(test_array)).to be_instance_of Array
    end
    
    it "should return all pairs of positions where the elements at those positions sum to zero." do
      expect(two_sum(test_array)).to eq([[0, 4], [0, 5], [2, 3]])
    end
  end
  
  describe '#my_transpose' do 
      let(:test_array) { 
  rows = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
  ]}
    
    it "should take in an array" do
      # expect { my_uniq(test_array) }.to_not raise_error('input not an array')
      expect { my_transpose("blue")}.to raise_error('input not an array')
    end
    
    it "should return an array" do
      expect(my_transpose(test_array)).to be_instance_of Array
    end
    
    it "should return original array if array does not contain arrays" do
      expect(my_transpose([1,2,3])).to eq([1,2,3])
    end
    
    it "should transpose an array" do
      expect(my_transpose(test_array)).to eq(cols = [
    [0, 3, 6],
    [1, 4, 7],
    [2, 5, 8]
  ])
    end
  end
  
  describe "#stock_picker" do
    let(:test_array) {[3,2,5,6,7]}
    
    it "should take in an array" do
      expect { stock_picker("blue")}.to raise_error('input not an array')
    end
    
    it "should return an array of size 2" do
      expect(stock_picker(test_array).length).to eq(2)
    end
    
    it "should buy return most profitable combo" do
      expect(stock_picker(test_array)).to eq([1,4])
    end
    
  end
  
  describe "Towers of Hanoi" do
    describe "#valid_move" do
      let(:test_move) {[1,2]}
    end
    
    describe "#move" do
    
    end
    
    describe "#won" do
      
    end
    
  end
  
  
  
  
  
  
  
  
  
  #
end