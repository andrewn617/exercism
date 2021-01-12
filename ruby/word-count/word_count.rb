class Phrase
  def initialize(phrase)
    @words = phrase.downcase.scan(/\w+'?\b\w?/)
  end

  def word_count
    @words.tally
  end
end