require 'rspec'
require './Integer.rb'

RSpec.describe 'NumberInWord' do
  it 'converts numbers 1 to 9 into words' do
    expect(1.in_words).to eq("one")
    expect(2.in_words).to eq("two")
    expect(3.in_words).to eq("three")
    expect(4.in_words).to eq("four")
  end

  it 'converts tens of number into words' do
    expect(20.in_words).to eq("twenty")
    expect(30.in_words).to eq("thirty")
    expect(40.in_words).to eq("forty")
    expect(24.in_words).to eq("twenty four")
    expect(32.in_words).to eq("thirty two")
    expect(48.in_words).to eq("forty eight")
  end

  it 'converts hundreds into words' do
    expect(100.in_words).to eq("one hundred")
    expect(200.in_words).to eq("two hundred")
    expect(104.in_words).to eq("one hundred and four")
    expect(213.in_words).to eq("two hundred and thirteen")        
  end

  it 'converts thousands in words' do
    expect(1000.in_words).to eq("one thousand")
    expect(3000.in_words).to eq("three thousand")
    expect(10000.in_words).to eq("ten thousand")
    expect(21000.in_words).to eq("twenty one thousand")
  end
end