# frozen_string_literal: true

class ResistorColorDuo
  RESISTOR_VALUES = {
    'black' => 0,
    'brown' => 1,
    'orange' => 3,
    'yellow' => 4,
    'blue' => 6,
    'violet' => 7,
    'grey' => 8
  }.freeze

  def self.value(resistors)
    resistors
      .map(&RESISTOR_VALUES)
      .reduce { |total_value, resistor_value| total_value * 10 + resistor_value }
  end
end
