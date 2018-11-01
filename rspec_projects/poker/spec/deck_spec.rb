require 'deck'
require 'rspec'

describe Deck do 
  subject (:poker) { Deck.new }
  
  
  describe "#initialize" do 
    it "will create an array of 52 cards" do 
      expect(poker.deck.length).to eq(52)
    end 
    it "will make all of the elements a card" do
      expect(poker.deck.sample).to be_an_instance_of(Card)
    end 
    it "won't have duplicate cards" do
      expect(poker.deck).to eq(poker.deck.uniq)
    end
  end 

  describe "#draw" do
    it "will shorten deck by 5 cards" do
      poker.draw
      expect(poker.deck.length).to eq(47)    
    end
    
    it "will return 5 cards" do
      expect(poker.draw.length).to eq(5)
    end
  
  end
    
end 