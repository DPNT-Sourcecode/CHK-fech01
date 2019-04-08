# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    num_as_string = number.to_s
    result = { "fizz" => false , "buzz" => false}
    if number % 5 == 0 || num_as_string.include?("5")
      result["fizz"] = true
    elsif number % 3 == 0 || num_as_string.include?("3")
      result["buzz"] = true
    end

    if result["fizz"] && result["buzz"]
      "fizz buzz"
    elsif result["fizz"]
      "fizz"
    elsif result["bizz"]
      "buzz"
    else
      num_as_string
    end

  end

end




