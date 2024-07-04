module NumberInWord
  class HandleNumbers
    def handle_others(num)      
      @output = ''
      while num.to_s.size > 2      
        zeros, number = getTens(num)
        @output += handle_nums(number.to_i) + ' ' + handle_power(zeros)
        num = num.to_s[1..-1].to_i      
      end      
      @output += InWord.new(num).in_words == 'zero' ? '' : ' and ' + InWord.new(num).in_words
    end
    
    def handle_tens(num)    
      @output = ''
      tens = (num / 10).round * 10
      @output += handle_nums(tens)

      digit = num - tens
      
      unless digit.zero?
        @output += ' ' + handle_nums(digit)
      end

      return @output
    end

    def handle_nums(num)
      NumberInWord.lookfor(num)
    end

    def handle_power(zeros)
      NumberHash::POWER_OF_TENS[zeros]
    end

    private

    def getTens(num)
      splitNum = ((num / 10**(num.to_s.length - 1)).round * (10**(num.to_s.length - 1))).to_s
      zeros = splitNum[1..-1].size
      number = splitNum[0]
      [zeros, number]
    end
  end
end