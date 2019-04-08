# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    num_as_string = number.to_s


    if number % 15 == 0 || (num_as_string.include?("3") && num_as_string.include?("5"))
      "fizz buzz"
    elsif number % 5 == 0 || num_as_string.include?("5")
      "buzz"
    elsif number % 3 == 0 || num_as_string.include?("3")
      "fizz"
    else
      num_as_string
    end
  end

end


