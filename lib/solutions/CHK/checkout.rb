# noinspection RubyUnusedLocalVariable
class Checkout
  GOODS = {"A" => 50,
           "B" => 30,
           "C" => 20,
           "D" => 15,
           "E" => 40,
           "F" => 10,
           "G" => 20,
           "H" => 10,
           "I" => 35,
           "J" => 60,
           "K" => 70,
           "L" => 90,
           "M" => 15,
           "N" => 40,
           "O" => 10,
           "P" => 50,
           "Q" => 30,
           "R" => 50,
           "S" => 20,
           "T" => 20,
           "U" => 40,
           "V" => 50,
           "W" => 20,
           "X" => 17,
           "Y" => 20,
           "Z" => 21,
           }
  DEALS = {"AAA" => -20,
           "BB" => -15,
           "AAAAA" => -50,
           "EEB" => -30,
           "FFF"=> -10,
           "5H" => -5,
           "10H" => -10,
           "2K" => -20,
           "NNNM" => -15,
           "5P" => -50,
           "3Q" => -10,
           "RRRQ" => -30,
           "4U" => -40,
           "2V" => -10,
           "3V" => -20,
           "3STXYZ" => 45
         }
  def checkout(basket)
    value = 0
    quantity = {A: 0,
                B: 0,
                C: 0,
                D: 0,
                E: 0,
                F: 0,
                G: 0,
                H: 0,
                I: 0,
                J: 0,
                K: 0,
                L: 0,
                M: 0,
                N: 0,
                O: 0,
                P: 0,
                Q: 0,
                R: 0,
                S: 0,
                T: 0,
                U: 0,
                V: 0,
                W: 0,
                X: 0,
                Y: 0,
                Z: 0
                }
    GOODS.each_pair do |key, price|
      basket.split('').each do |item|
        return -1 unless GOODS.key?(item)
        if item == key
          value += price
          quantity[key.to_sym] += 1
        end
      end
    end

    value += quantity[:A]/ 5 * DEALS["AAAAA"]
    value += (quantity[:A] % 5 / 3) * DEALS["AAA"]

    while (quantity[:E] / 2 > 0 && quantity[:B] > 0) do
      value += DEALS["EEB"]
      quantity[:B] -=1
      quantity[:E] -=2
    end

    while (quantity[:N] / 3 > 0 && quantity[:M] > 0) do
      value += DEALS["NNNM"]
      quantity[:N] -= 3
      quantity[:M] -= 1
    end

    while (quantity[:R] / 3 > 0 && quantity[:Q] > 0) do
      value += DEALS["RRRQ"]
      quantity[:R] -= 3
      quantity[:Q] -= 1
    end

    # Z > Y = S = T > X
    while group_buy(quantity)/3 > 0
      value -= 21 * quantity[:Z]
      value -= 21 * quantity[:Y]
      value -= 21 * quantity[:S]
      value -= 21 * quantity[:T]
      value -= 21 * quantity[:X]
    end
    value += quantity[:B]/2 * DEALS["BB"]
    value += quantity[:F]/ 3 * DEALS["FFF"]
    value += quantity[:H]/5 * DEALS["5H"]
    value += quantity[:H]/10 * DEALS["10H"]
    value += quantity[:K]/2 * DEALS["2K"]
    value += quantity[:P]/5 * DEALS["5P"]
    value += quantity[:Q]/3 * DEALS["3Q"]
    value += quantity[:U]/4 * DEALS["4U"]
    value += quantity[:V]/ 3 * DEALS["3V"]
    value += (quantity[:V] % 3 / 2) * DEALS["2V"]
    value
  end

  private

  def group_buy(quantity)
    group_buy = quantity[:S] + quantity[:T] + quantity[:X] + quantity[:Y] + quantity[:Z]
  end
end






