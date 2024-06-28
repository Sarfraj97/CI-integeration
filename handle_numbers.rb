module NumberInWord
  class HandleNumbers
    def handle_tens(num)
      @output = ''
      tens = (num / 10).round * 10
      @output += NumberInWord.lookfor(tens)

      digit = num - tens

      unless digit.zero?
        sign = num < 100 ? '-' : ' '
        @output += sign + handle_nums(digit)
      end
    end

    def handle_nums(num)
      NumberInWord.lookfor(num)
    end
  end
end