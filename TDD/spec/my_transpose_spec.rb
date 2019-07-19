require "rspec"
require "my_transpose"

describe "#my_transpose" do
  subject(:arr) { 
    [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
     ] 
  }

  it "convert rows into columns" do
    expect(my_transpose(arr)). to eq (
    [
      [0, 3, 6],
      [1, 4, 7],
      [2, 5, 8]
    ]
    )  
  end
end