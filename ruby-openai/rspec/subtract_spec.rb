RSpec.describe Subtract do
  describe ".call" do
    it "subtracts two positive integers" do
      result = Subtract.call(5, 3)
      expect(result).to eq(2)
    end
    
    it "subtracts a negative integer from a positive integer" do
      result = Subtract.call(5, -3)
      expect(result).to eq(8)
    end
    
    it "subtracts a positive integer from a negative integer" do
      result = Subtract.call(-5, 3)
      expect(result).to eq(-8)
    end
    
    it "subtracts two negative integers" do
      result = Subtract.call(-5, -3)
      expect(result).to eq(-2)
    end
    
    it "subtracts a float from an integer" do
      result = Subtract.call(5, 2.5)
      expect(result).to eq(2.5)
    end
    
    it "subtracts an integer from a float" do
      result = Subtract.call(2.5, 1)
      expect(result).to eq(1.5)
    end
  end
end