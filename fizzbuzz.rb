require 'rspec'

class Fizzbuzz
  def output(number)
    if number % 3 == 0 && number % 5 == 0
      return "fizzbuzz"
    elsif number % 3 == 0
      return "fizz"
    elsif number % 5 == 0
      return "buzz"
    else
      return number
    end
  end

  def go
    (1..100).each do |number|
      puts output(number)
    end
  end
end

RSpec.describe Fizzbuzz do
  describe '#output' do
    it 'should return 1 if given 1' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(1)).to eq(1)
    end

    it 'should return fizz if given 3' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(3)).to eq("fizz")
    end

    it 'should return fizz if given 6' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(6)).to eq("fizz")
    end

    it 'should return buzz if given 5' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(5)).to eq("buzz")
    end

    it 'should return buzz if given 10' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(10)).to eq("buzz")
    end

    it 'should return buzz if given 15' do
      fizzbuzz = Fizzbuzz.new
      expect(fizzbuzz.output(15)).to eq("fizzbuzz")
    end
  end
end