require 'tdd'
require 'rspec'


describe TDD do 

  subject (:test) { TDD.new }
  
  describe "#initialize" do 
    it "will create an empty array" do 
      expect(test.arr).to eq([])
    end 
  end 
  
  subject (:test2) { TDD.new([-1,2,1,3,-3]) }
  
  describe "#my_unique" do 
    it "will remove duplicates from array" do 
      expect(test2.my_unique(test2.arr)).to eq(test2.arr.uniq)
    end 
  end 
    
  describe "#two_sum" do 
    it "will return indices of pairs summed to zero" do 
      expect(test2.two_sum).to eq([[0,2],[3,4]])
    end 
  end 
  
  describe "#my_transpose" do 
    it "will take the transpose of a matrix" do 
      expect(test2.my_transpose).to eq(test2.matrix.transpose)
    end
  end 
  
  describe "#stock_picker" do 
    prices = [3,4,6,2,1,3]
    
    it "will return the most profitable pair of days" do 
      expect(test2.stock_picker(prices)).to eq([0,2])
      
    end 
  end 
  
  
  
  
  
  
end 