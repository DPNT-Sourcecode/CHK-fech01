# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    num_as_string = number.to_s
    result = { "fizz" => false , "buzz" => false, "deluxe" => false}

    if number % 5 == 0 || num_as_string.include?("5")
      result["buzz"] = true
    end

    if number % 3 == 0 || num_as_string.include?("3")
      result["fizz"] = true
    end


      if num_as_string.count(num_as_string[1]) == num_as_string.length



    if result["fizz"] && result["buzz"]
      "fizz buzz"
    elsif result["fizz"]
      "fizz"
    elsif result["buzz"]
      "buzz"
    else
      num_as_string
    end

  end

end



