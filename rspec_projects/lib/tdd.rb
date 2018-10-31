class TDD
attr_reader :arr

  def initialize 
    @arr = []
  end 

  def my_unique(arr)
    result = []
    arr.each do |num|
      result << num unless result.include?(num)
    end 
    result
  end 
  
end
