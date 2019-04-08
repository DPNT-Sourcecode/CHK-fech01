# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    num_as_string = number.to_s
    bools = { "fizz" => false , "buzz" => false, "fake" => false, "deluxe" => false}
    result = []

    if number % 5 == 0 || num_as_string.include?("5")
      bools["buzz"] = true
    end

    if number % 5 == 0 && num_as_string.include?("5")
      bools["deluxe"] = true
    end

    if number % 3 == 0 || num_as_string.include?("3")
      bools["fizz"] = true
    end

    if number % 3 == 0 && num_as_string.include?("3")
      bools["deluxe"] = true
    end

    bools["fake"] =  (bools["deluxe"] && number % 2 != 0)

    bools.each_pair do |key, value|
      result << key if value
    end

    return num_as_string if result.empty?
    result.join(" ")

  end

end




