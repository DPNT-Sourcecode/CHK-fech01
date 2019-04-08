# noinspection RubyUnusedLocalVariable
class Checkout
  GOODS = {"A" => 50, "B" => 30, "C" => 20, "D"=> 15}
  def checkout(basket)
    GOODS.each_pair do |key, value|
      return value if basket == key
    end
    -1
  end

end


