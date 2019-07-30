require './lib/ruby_methods.rb'

describe Enumerable do
  describe "#my_each" do
    it "returns every element" do
      expect([1,2,3,4,5].my_each {|el| el}).to eql([1,2,3,4,5])
    end

    it "returns enumerator" do
      expect([1,2,3,4,5].my_each).to be_an Enumerator
      expect([1,2,3,4,5].my_each.to_a).to eql([1,2,3,4,5])
    end
  end
  

  describe "#my_map" do
  it "returns an array where the elements have been operated on in some way based on the block passed in." do
    expect([1, 2, 3, 4].my_map { |n| n * 10 }).to eql([10, 20, 30, 40])
  end

  it "returns an array where the elements have been operated on in some way based on a proc passed in." do
    subtract_10 = Proc.new { |n| n - 10}
    expect([1, 2, 3, 4, 5].my_map(&subtract_10)).to eql([-9, -8, -7, -6, -5])
  end
  end
end