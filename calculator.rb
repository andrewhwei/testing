require 'rspec'


class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def print_hello
    return "hello"
  end

  def square_root(number)
    return Math.sqrt(number)
  end

  def log(number)
    return Math.log10(number)
  end
end


RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of the two numbers' do
      calc = Calculator.new
      sum = calc.add(2, 3)
      expect(sum).to eq(5)
    end
  end

  describe '#subtract' do
    it 'should return the difference of the two numbers' do
      calc = Calculator.new
      difference = calc.subtract(5, 4)
      expect(difference).to eq(1)
    end
  end

  describe '#multiply' do
    it 'should return the multiplication of the two numbers' do
      calc = Calculator.new
      multiplication = calc.multiply(5, 4)
      expect(multiplication).to eq(20)
    end
  end

  describe '#divide' do
    it 'should return the quotient of the two numbers' do
      calc = Calculator.new
      quotient = calc.divide(10, 5)
      expect(quotient).to eq(2)
    end
  end

  describe '#square' do
    it 'should return the square of the number' do
      calc = Calculator.new
      square = calc.square(3)
      expect(square).to eq(9)
    end
  end

  describe '#power' do
    it 'should return the answer of the two numbers' do
      calc = Calculator.new
      answer = calc.power(3, 2)
      expect(answer).to eq(9)
    end
  end

  describe '#print_hello' do
    it 'should return hello' do
      calc = Calculator.new
      message = calc.print_hello
      expect(message).to eq("hello")
    end
  end

  describe '#square_root' do
    it 'should return the root of the number' do
      calc = Calculator.new
      root = calc.square_root(36)
      expect(root).to eq(6)
    end
  end

  describe '#log' do
    it 'should return the log of the number' do
      calc = Calculator.new
      log = calc.log(1)
      expect(log).to eq(0)
    end
  end

end










