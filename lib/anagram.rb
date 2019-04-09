class Anagram
  attr_reader :word
  @@all = []
  def initialize(word)
    @word = word
    @@all << self
  end
  def match(possible_anagrams)
    possible_anagrams.select {|anagram| anagram.split("").sort == @word.split("").sort}
  end
  def self.all
    @@all
  end
end
