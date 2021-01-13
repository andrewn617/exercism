class Scrabble
  attr_reader :word

  SCORE_CHART = [
    "",
    "aeioulnrst",
    "dg",
    "bcmp",
    "fhvwy",
    "k",
    "",
    "",
    "jx",
    "",
    "qz"
  ].each_with_index.flat_map { |row, i| row.chars.product([i]) }.to_h

  def self.score(word)
    new(word).score
  end

  def initialize(word)
    @word = word.to_s.downcase
  end

  def score
    @word
      .scan(/\w/)
      .sum(&SCORE_CHART)
  end
end