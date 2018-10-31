require 'tdd'
require 'rspec'


describe TDD do 
  subject (:test) { TDD.new }
  describe "#initialize" do 
    it "will create an empty array" do 
      expect(test.arr).to eq([])
    end 
  
  end 
  
end 