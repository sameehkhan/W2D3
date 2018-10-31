require_relative 'card.rb'

class Hand 
  attr_reader :hand
  CARDS = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  
  def initialize(hand)
    @hand = hand
  end 
  
  def draw(hand)
    @hand = hand
  end
  
  def check_hand
    
  end
  
  def check_royal_flush
    royals = ['10', 'J', 'Q', 'K', 'A']
    symbol = @hand[0].sym
    
    @hand.each do |card|
      royals.delete(card.num) 
      return false if card.sym != symbol
    end
    
    return false if !royals.empty?
    return true
  end
  
  def straight_flush
  end
    
  
  
end 



cards = [Card.new('10', 'spade'), Card.new('Q', 'spade'), Card.new('A', 'spade'), Card.new('J', 'spade'), Card.new('K', 'spade')]
hand = Hand.new(cards)
p hand.check_royal_flush