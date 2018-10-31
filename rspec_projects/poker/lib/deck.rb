require_relative 'card.rb'

class Deck
  attr_reader :deck
  
  def initialize
    @deck = []
    setup_deck
    shuffle
  end
  
  def shuffle
    @deck.shuffle!
  end
  
  def draw
    @deck.pop(5)
  end
  
  private
  def setup_deck
    symbol = ['heart', 'spade', 'clover', 'diamond']
    cards = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
    
    symbol.each do |sym|
      cards.each do |card|
        @deck << Card.new(card, sym)
      end
    end
  end
end

# d = Deck.new
# p d.deck
# d.shuffle
# p d.deck