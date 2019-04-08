# noinspection RubyUnusedLocalVariable
class Checkout
  GOODS = {"A" => 50, "B" => 30, "C" => 20, "D"=> 15, "E"=> 40}
  DEALS = {"AAA" => -20, "BB" => -15, "AAAAA" => -50, "EEB" => -30}
  def checkout(basket)
    value = 0
    GOODS.each_pair do |key, price|
      basket.split('').each do |item|
        return -1 unless GOODS.key?(item)
        value += price if item == key
      end
    end

      value += DEALS["AAAAA"] * (basket.count("A")/5)
    if basket.count("A") % 5 > 2
      value += DEALS["AAA"] * (basket.count("A")/3)
    end

    if basket.count("E") > 0 && basket.count("E").count % 2 == 0 && 
    value += DEALS["BB"] * (basket.count("B")/2)
  end

end




