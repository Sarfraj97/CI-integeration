module NumberInWord
  class HandleNumbers
    def handle_others(num)      
      @output = ''
      zeros = ((num / 10**(num.to_s.length - 1)).round * (10**(num.to_s.length - 1))).to_s
      zero = zeros[1..-1]
      number = zeros[0]      
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
      NumberInWord.lookfor(num.to_i)
    end
  end
end