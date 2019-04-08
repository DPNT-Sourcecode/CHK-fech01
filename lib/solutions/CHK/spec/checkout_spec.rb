require "./checkout"

describe Checkout do

  shop = Checkout.new

  it "Returns -1 for an invalid input a" do
    expect(shop.checkout("a")).to eq -1
  end

  it "Returns -1 for an invalid input F" do
    expect(shop.checkout("F")).to eq -1
  end

end

