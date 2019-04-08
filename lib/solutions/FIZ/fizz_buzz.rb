# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    num_as_string = number.to_s
    bools = { "fizz" => false , "buzz" => false, "deluxe" => false}
    result = []

    if number % 5 == 0 || num_as_string.include?("5")
      bools["buzz"] = true
    end

    if number % 3 == 0 || num_as_string.include?("3")
      bools["fizz"] = true
    end

    if num_as_string[1].nil?
    elsif num_as_string.count(num_as_string[1]) == num_as_string.length
      bools["deluxe"] = true
    end

    bools.each_pair do |key, value|
      result << key if value
    end

    return num_as_string if result.empty?
    result.join(" ")

  end

end
