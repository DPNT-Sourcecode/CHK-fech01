# noinspection RubyUnusedLocalVariable
class Checkout
  GOODS = {"A" => 50,
           "B" => 30,
           "C" => 20,
           "D" => 15,
           "E" => 40,
           "F" => 10,
           "G" => 20,
         }
  DEALS = {"AAA" => -20, "BB" => -15, "AAAAA" => -50, "EEB" => -30, "FFF"=> -10}
  def checkout(basket)
    value = 0
    quantity = {A: 0, B: 0, C: 0, D: 0, E: 0, F: 0}
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

    value
  end

end

