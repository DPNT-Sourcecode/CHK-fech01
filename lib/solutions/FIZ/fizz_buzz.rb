# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    num_as_string = number.to_s
    hash = {"3" => "fizz"}
    if number % 15 == 0 || num_as_string
      "fizz buzz"
    elsif number % 5 == 0
      "buzz"
    elsif number % 3 == 0
      "fizz"
    else
      num_as_string
    end
  end

end

