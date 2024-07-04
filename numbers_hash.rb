module NumberInWord
  class NumberHash
    DEFINITIONS = 
    {      
      0 => { number: 'zero', ordinal: 'zeroth' },
      1 => { number: 'one', ordinal: 'first' },
      2 => { number: 'two', ordinal: 'second', fraction: { singular: 'half', plural: 'halves' } },
      3 => { number: 'three', ordinal: 'third' },
      4 => { number: 'four', ordinal: 'fourth', fraction: { singular: 'quarter', plural: 'quarters' } },
      5 => { number: 'five', ordinal: 'fifth' },
      6 => { number: 'six' },
      7 => { number: 'seven' },
      8 => { number: 'eight', ordinal: 'eighth' },
      9 => { number: 'nine', ordinal: 'ninth' },
      10 => { number: 'ten' },
      11 => { number: 'eleven' },
      12 => { number: 'twelve', ordinal: 'twelfth' },
      13 => { number: 'thirteen' },
      14 => { number: 'fourteen' },
      15 => { number: 'fifteen' },
      16 => { number: 'sixteen' },
      17 => { number: 'seventeen' },
      18 => { number: 'eighteen' },
      19 => { number: 'nineteen' },
      20 => { number: 'twenty', ordinal: 'twentieth' },
      30 => { number: 'thirty', ordinal: 'thirtieth' },
      40 => { number: 'forty', ordinal: 'fortieth' },
      50 => { number: 'fifty', ordinal: 'fiftieth' },
      60 => { number: 'sixty', ordinal: 'sixtieth' },
      70 => { number: 'seventy', ordinal: 'seventieth' },
      80 => { number: 'eighty', ordinal: 'eightieth' },
      90 => { number: 'ninety', ordinal: 'ninetieth' }
    }.freeze

    POWER_OF_TENS = {
      2 => "hundred",
      3 => "thousand"
    }
  end
end