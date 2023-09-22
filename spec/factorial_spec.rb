require 'rspec'
require_relative '../lib/solver'

describe '#factorial' do
  # Use describe to group examples by method name
  # Use context to group examples by different scenarios or conditions
  context 'when the argument is 0' do
    # Use it to specify an example (a test case)
    it 'returns 1' do
      # Use expect to make assertions about the expected outcome
      expect(factorial(0)).to eq(1)
    end
  end

  context 'when the argument is a positive integer' do
    it 'returns the factorial of that number' do
      expect(factorial(1)).to eq(1)
      expect(factorial(2)).to eq(2)
      expect(factorial(3)).to eq(6)
      expect(factorial(4)).to eq(24)
      expect(factorial(5)).to eq(120)
    end
  end

  context 'when the argument is a negative integer' do
    it 'raises an exception' do
      # Use expect to raise_error matcher to check for exceptions
      expect { factorial(-1) }.to raise_error(ArgumentError)
      expect { factorial(-2) }.to raise_error(ArgumentError)
      expect { factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  context 'when the argument is not an integer' do
    it 'raises an exception' do
      expect { factorial(1.5) }.to raise_error(ArgumentError)
      expect { factorial('a') }.to raise_error(ArgumentError)
      expect { factorial(nil) }.to raise_error(ArgumentError)
    end
  end
end

