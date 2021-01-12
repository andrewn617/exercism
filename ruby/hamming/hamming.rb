class Hamming
  def self.compute(strand_a, strand_b)
    raise ArgumentError if strand_a.size != strand_b.size

    strand_a
      .chars
      .zip(strand_b.chars)
      .map(&:uniq)
      .count { |position| position.size > 1 }
  end
end