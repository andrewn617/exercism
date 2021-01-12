class Raindrops
  DROPS = {
    3 => "Pling",
    5 => "Plang",
    7 => "Plong"
  }

  def self.convert(number)
    new(number).convert
  end

  def initialize(number)
    @number = number
  end

  def convert
    drops.any? ? drops.join : @number.to_s
  end

  def drops
    @_drops = DROPS.select { |drop| @number % drop == 0 }.values
  end
end