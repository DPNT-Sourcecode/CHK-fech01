require "./checkout"

describe Checkout do

  shop = Checkout.new
  context "Invalid basket" do
    it "Returns -1 for an invalid input a" do
      expect(shop.checkout("a")).to eq -1
    end
    it "Returns -1 for an invalid input +" do
      expect(shop.checkout("+")).to eq -1
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
    it "Returns an 40 for E" do
      expect(shop.checkout("E")).to eq 40
    end
    it "Returns 10 for F" do
      expect(shop.checkout("F")).to eq 10
    end
    it "Returns 20 for G" do
      expect(shop.checkout("G")).to eq 20
    end
    it "Returns 10 for H" do
      expect(shop.checkout("H")).to eq 10
    end
    it "Returns 35 for I" do
      expect(shop.checkout("I")).to eq 35
    end
    it "Returns 60 for J" do
      expect(shop.checkout("J")).to eq 60
    end
    it "Returns 70 for K" do
      expect(shop.checkout("K")).to eq 70
    end
    it "Returns 90 for L" do
      expect(shop.checkout("L")).to eq 90
    end
    it "Returns 15 for M" do
      expect(shop.checkout("M")).to eq 15
    end
    it "Returns 40 for N" do
      expect(shop.checkout("N")).to eq 40
    end
    it "Returns 10 for O" do
      expect(shop.checkout("O")).to eq 10
    end
    it "Returns 50 for P" do
      expect(shop.checkout("P")).to eq 50
    end
    it "Returns 30 for Q" do
      expect(shop.checkout("Q")).to eq 30
    end
    it "Returns 50 for R" do
      expect(shop.checkout("R")).to eq 50
    end
    it "Returns 20 for S" do
      expect(shop.checkout("S")).to eq 20
    end
    it "Returns 20 for T" do
      expect(shop.checkout("T")).to eq 20
    end
    it "Returns 40 for U" do
      expect(shop.checkout("U")).to eq 40
    end
    it "Returns 50 for V" do
      expect(shop.checkout("V")).to eq 50
    end
    it "Returns 20 for W" do
      expect(shop.checkout("W")).to eq 20
    end
    it "Returns 17 for X" do
      expect(shop.checkout("X")).to eq 17
    end
    it "Returns 20 for Y" do
      expect(shop.checkout("Y")).to eq 20
    end
    it "Returns 21 for Z" do
      expect(shop.checkout("Z")).to eq 21
    end
  end

  context "Multiple different items" do
    it "Returns an 100 for AA" do
      expect(shop.checkout("AA")).to eq 100
    end
    it "Returns an 80 for AB" do
      expect(shop.checkout("AB")).to eq 80
    end
    it "Returns an 70 for AC" do
      expect(shop.checkout("AC")).to eq 70
    end
    it "Returns an 65 for AD" do
      expect(shop.checkout("AD")).to eq 65
    end
    it "Returns an 80 for BA" do
      expect(shop.checkout("BA")).to eq 80
    end
    it "Returns an 50 for BC" do
      expect(shop.checkout("BC")).to eq 50
    end
    it "Returns an 45 for BD" do
      expect(shop.checkout("BD")).to eq 45
    end
    it "Returns an 80 for EE" do
      expect(shop.checkout("EE")).to eq 80
    end

    it "Returns an 20 for FF" do
      expect(shop.checkout("FF")).to eq 20
    end
  end

  context "Deals" do
    it "Returns an 130 for AAA" do
      expect(shop.checkout("AAA")).to eq 130
    end

    it "Returns an 260 for AAA" do
      expect(shop.checkout("AAAAAA")).to eq 250
    end

    it "Returns 200 for AAAAA" do
      expect(shop.checkout("AAAAA")).to eq 200
    end

    it "Returns an 180 for AAA" do
      expect(shop.checkout("AAAA")).to eq 180
    end

    it "Returns an 45 for BB" do
      expect(shop.checkout("BB")).to eq 45
    end

    it "Returns an 75 for BBB" do
      expect(shop.checkout("BBB")).to eq 75
    end

    it "Returns 80 for EEB" do
      expect(shop.checkout("EEB")).to eq 80
    end

    it "Returns 330 for AAAAAAAA" do
      expect(shop.checkout("AAAAAAAA")).to eq 330
    end

    it "Returns 330 for AAAAAAAAA" do
      expect(shop.checkout("AAAAAAAAA")).to eq 380
    end

    it "Returns 160 for EEEEBB" do
      expect(shop.checkout("EEEEBB")).to eq 160
    end

    it "Returns 160 for BEBEEE" do
      expect(shop.checkout("BEBEEE")).to eq 160
    end

    it "Returns 160 for ABCDEABCDE" do
      expect(shop.checkout("ABCDEABCDE")).to eq 280
    end

    it "Returns 125 for BBBEE" do
      expect(shop.checkout("BBBEE")).to eq 125
    end

    it "Returns an 20 for FFF" do
      expect(shop.checkout("FFF")).to eq 20
    end

    it "Returns 45 for 5H" do
      expect(shop.checkout("HHHHH")).to eq 45
    end

    it "Returns 80 for 10 H" do
      expect(shop.checkout("HHHHHHHHHH")).to eq 80
    end

    it "Returns 2K for 150" do
      expect(shop.checkout("KK")).to eq 120
    end

    it "Returns NNNM for 120" do
      expect(shop.checkout("NNNM")).to eq 120
    end

    it "Returns 5P for 200" do
      expect(shop.checkout("PPPPP")).to eq 200
    end

    it "Returns 3Q for 80" do
      expect(shop.checkout("QQQ")).to eq 80
    end

    it "Returns RRRQ for 150" do
      expect(shop.checkout("RRRQ")).to eq 150
    end

    it "Returns 4U for 120" do
      expect(shop.checkout("UUUU")).to eq 120
    end

    it "Returns 2V for 90" do
      expect(shop.checkout("VV")).to eq 90
    end

    it "Returns 3V for 130" do
      expect(shop.checkout("VVV")).to eq 130
    end

  end
end

