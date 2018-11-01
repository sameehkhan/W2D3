require 'hand'
require 'rspec'

describe Hand do 
  subject (:hand) { Hand.new([Card.new('9', 'spade'), Card.new('10', 'spade'), Card.new('J', 'spade'), Card.new('Q', 'spade'), Card.new('K', 'spade')]) }

  describe "#initialize" do 
    it "will create an array of 52 cards" do 
      expect(hand.hand.length).to eq(5)
    end 
    it "will make all of the elements a card" do
      expect(hand.hand.sample).to be_an_instance_of(Card)
    end 
  
  end 