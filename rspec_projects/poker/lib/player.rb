require_relative 'hand.rb'

class Player
  def initialize
    @hand = Hand.new
    @money = 50000
  end

end