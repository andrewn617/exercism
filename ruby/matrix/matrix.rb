class Matrix
  attr_reader :rows

  def initialize(matrix_string)
    @rows = parse_rows(matrix_string)
  end

  def columns
    rows.transpose
  end

  private

  def parse_rows(matrix_string)
    matrix_string.split("\n").map(&method(:parse_row))
  end

  def parse_row(row_string)
    row_string.split.map(&:to_i)
  end
end