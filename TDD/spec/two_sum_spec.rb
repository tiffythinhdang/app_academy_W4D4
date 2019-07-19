require "rspec"
require "two_sum"


describe "#two_sum" do 
  subject(:arr) {[-1, 0, 2, -2, 1]}
  it "returns array of pairs of indices at which numbers sum to 0" do
    expect(two_sum(arr)).to eq( [ [0, 4], [2, 3] ] )
  end

  it "returns sorted pairs" do
    expect(two_sum(arr)).to_not eq([ [4, 0], [3, 2] ])
  end

end