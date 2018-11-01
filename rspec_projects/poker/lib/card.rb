class Card
  attr_reader :num, :sym, :val
  
  def initialize(val, sym)
    @val = val
    @sym = sym
    @num = 0
    
    case @val
    when 'J'
      @num = 11
    when 'Q'
      @num = 12
    when 'K'
      @num = 13
    when 'A'
      @num = 1
    else
      @num = @val.to_i
    end
    
  end
end