require './numbers_hash'
require './handle_numbers'

module NumberInWord
  class InWord < HandleNumbers
    def initialize(num)
      @num = num
    end

    def in_words
      if @num >= 20 && @num < 100
        return handle_tens(@num)
      elsif @num < 20
        return handle_nums(@num)
      else
        return handle_others(@num)
      end
    end
  end
end