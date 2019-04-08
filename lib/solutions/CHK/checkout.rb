# noinspection RubyUnusedLocalVariable
class Checkout
  GOODS = {"A" => 50, "B" => 30, "C" => 20, "D"=> 15}
  def checkout(basket)
    value = 0
    GOODS.each_pair do |key, value|
      basket.each do |item|
      end
    end
    -1
  end

end



