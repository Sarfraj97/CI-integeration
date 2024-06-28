require './in_word.rb'

module NumberInWord
  
  def in_words
    InWord.new(self).in_words
  end

  class << self
    def lookfor(num)
      return NumberHash::DEFINITIONS[num][:number]
    end
  end
end
