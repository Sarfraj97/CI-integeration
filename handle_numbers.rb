module NumberInWord
  class HandleNumbers
    def handle_above_thousands(num)
      @output = ''
      numbers = separate_numbers(num)
      
      numbers.reverse.each_with_index do |num, index|
        next if num == 0

        if index == 0
          @output = InWord.new(num).in_words + handle_sequence(index)
        else
          @output = InWord.new(num).in_words + handle_sequence(index) + @output
        end
      end

      return @output
    end

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

    def handle_sequence(zeros)
      NumberHash::SEQUENCE_OF_POWER[zeros]
    end

    private

    def getTens(num)
      splitNum = ((num / 10**(num.to_s.length - 1)).round * (10**(num.to_s.length - 1))).to_s
      zeros = splitNum[1..-1].size
      number = splitNum[0]
      [zeros, number]
    end

    def separate_numbers(num)
      arr = []
      numbers = num.to_s.split('')
      size = numbers.length
      hundreds = numbers.last(3).join('')
      if size > 3 
        numbers.first(size-3).reverse.each_slice(2).map{ |i| i.join }.each { |k|  arr.unshift k.reverse.to_i }
      end
      arr << hundreds.to_i
    end
  end
end