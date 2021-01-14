class Luhn
  def self.valid?(number)
    number = number.delete(" ")

    return false if number.length < 2
    return false if number.match?(/[^\s\d]/)

    digits = number.to_i.digits

    digits << 0 if digits.size.odd?

    odds, evens = digits.each_slice(2).to_a.transpose

    (odds.sum + double(evens).sum) % 10 == 0
  end

  def self.double(numbers)
    numbers.map { |number| number * 2 > 9 ? number * 2  - 9 : number * 2 }
  end
end