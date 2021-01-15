class Luhn
  attr_reader :number_string

  def self.valid?(number_string)
    new(number_string).valid?
  end

  def initialize(number_string)
    @number_string = number_string.delete(" ")
  end

  def valid?
    return false if number_string == "0"
    return false if number_string.match?(/[^\s\d]/)

    odds, evens = digits.partition.each_with_index { |_, i| i.even?}

    (odds.sum + double(evens).sum) % 10 == 0
  end

  private

  def digits
    @_digits ||= number_string.to_i.digits
  end

  def double(numbers)
    numbers.map { |number| (number * 2).digits.sum }
  end
end