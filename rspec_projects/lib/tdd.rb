class TDD
attr_reader :arr, :matrix 

  def initialize(arr = [], matrix = [[0,1,2],[3,4,5],[6,7,8]])
    @arr = arr
    @matrix = matrix
  end 

  def my_unique(arr)
    result = []
    arr.each do |num|
      result << num unless result.include?(num)
    end 
    result
  end 
  
  def two_sum
    result = []
    @arr.each_with_index do |nums, i|
      @arr.each_with_index do |nums2, j|
        result << [i,j] if j > i && nums + nums2 == 0
      end 
    end 
    result 
  end 
  
  def my_transpose
    rows = @matrix.length 
    cols = @matrix[0].length 
    result = Array.new(cols) { Array.new(rows)}
    
    (0...rows).each do |i|
      (0...cols).each do |j|
        result[i][j] = @matrix[j][i]
      end 
    end 
    result
  end 
  
  def stock_picker(prices)
    hsh = {}
    
    prices.each_with_index do |el, i|
      prices.each_with_index do |el2, j|
        hsh[el2 - el] = [i, j] if j > i
      end
    end
    
    hsh = (hsh.sort_by { |k, v| k }).to_h
    hsh.values[-1]
  end
  
end
