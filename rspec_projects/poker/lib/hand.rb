require_relative 'card.rb'

class Hand 
  attr_reader :hand
  CARDS = ['A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
  
  def initialize(hand)
    @hand = hand
  end 
  
  def draw(hand)
    @hand = hand
  end
  
  def check_hand
    
  end
  
  def check_royal_flush
    royals = CARDS[-5..-1]
    
    
    @hand.each do |card|
      royals.delete(card.num) 
    end
    
    return false if !royals.empty? || !check_flush 
    
    return true
  end
  
  def straight_flush
    sorted_hand = @hand.sort_by { |el| el.num }
    
    (0...4).each do |i|   # 0 - 3
      return false if sorted_hand[i].num + 1 != sorted_hand[i + 1].num 
    end
    check_flush
  end
  
  def check_flush
    first_card = @hand[0].sym
    
    symbol.all? { |el| el == first_card }
    
  end 
  
  def symbol 
    all_symbols = []
    
    @hand.each do |el|
      all_symbols << el.sym 
    end 
    all_symbols
  end 
  
  
  
end 


# [5, 6, 7, 8, 3]


cards = [Card.new('9', 'spade'), Card.new('10', 'spade'), Card.new('J', 'spade'), Card.new('Q', 'spade'), Card.new('K', 'spade')]
hand = Hand.new(cards)
p hand.straight_flush