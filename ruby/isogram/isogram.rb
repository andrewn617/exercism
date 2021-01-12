class Isogram
  def self.isogram?(phrase)
    phrase.downcase.scan(/\w/).uniq.count == phrase.downcase.scan(/\w/).count
  end

  def initialize(phrase)
    @characters = phrase.downcase.scan(/\w/)
  end

  def isogram?
    @characters.uniq == @characters
  end
end