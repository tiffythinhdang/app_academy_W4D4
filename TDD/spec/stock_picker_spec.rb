require "rspec"
require "stock_picker"

describe "#stock_picker" do
  subject(:stock) {[100, 200, 50, 250, 300, 50]}
  it "returns array of buy day and sell day that gives the best profit" do
    expect(stock_picker(stock)).to eq ([2, 4])
  end
  it "should not return buying day after selling day" do
    expect(stock_picker(stock)).to_not eq ([5, 4])
  end
end