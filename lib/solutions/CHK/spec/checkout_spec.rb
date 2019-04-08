require "./checkout"

describe Checkout do

  shop = Checkout.new
context "Invalid basket" do
  it "Returns -1 for an invalid input a" do
    expect(shop.checkout("a")).to eq -1
  end

  it "Returns -1 for an invalid input F" do
    expect(shop.checkout("F")).to eq -1
  end
end

context "Single Items" do
  it "Returns an 50 for A" do
    expect(shop.checkout("A")).to eq 50
  end
  it "Returns an 30 for B" do
    expect(shop.checkout("B")).to eq 30
  end
  it "Returns an 20 for C" do
    expect(shop.checkout("C")).to eq 20
  end
  it "Returns an 15 for D" do
    expect(shop.checkout("D")).to eq 15
  end
end


end


