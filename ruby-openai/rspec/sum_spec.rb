RSpec.describe Sum do
  describe ".call" do
    it "returns the sum of two integers" do
      expect(Sum.call(2, 3)).to eq(5)
    end
    
    it "returns the sum of two negative integers" do
      expect(Sum.call(-2, -3)).to eq(-5)
    end
    
    it "returns the sum of a positive and a negative integer" do
      expect(Sum.call(2, -3)).to eq(-1)
    end
    
    it "returns the sum of two floats" do
      expect(Sum.call(2.5, 3.5)).to eq(6.0)
    end
    
    it "returns the sum of a float and an integer" do
      expect(Sum.call(2.5, 3)).to eq(5.5)
    end
    
    it "raises an error if one of the arguments is not a number" do
      expect{ Sum.call(2, "3") }.to raise_error(TypeError)
    end
  end
end