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
           "K" => 80,
           "L" => 90,
           "M" => 15,
           "N" => 40,
           "O" => 10,
           "P" => 50,
           "Q" => 30,
           "R" => 50,
           "S" => 30,
           "T" => 20,
           "U" => 40,
           "V" => 50,
           "W" => 20,
           "X" => 90,
           "Y" => 10,
           "Z" => 50,
           }
  DEALS = {"AAA" => -20,
           "BB" => -15,
           "AAAAA" => -50,
           "EEB" => -30,
           "FFF"=> -10,
           "5H" => -5,
           "10H" => -10
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
    value += quantity[:B]/2 * DEALS["BB"]
    value += quantity[:F]/ 3 * DEALS["FFF"]
    value += quantity[:H]/5 * DEALS["5H"]
    value += quantity[:H]/10 * DEALS["10H"]
    value
  end

end




