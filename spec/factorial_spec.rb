require 'rspec'
require_relative '../lib/solver'

describe 'Solver#factorial' do
  before :each do
    @solver = Solver.new
  end
  context 'when the argument is 0' do
    it 'returns 1' do
      expect(@solver.factorial(0)).to eq(1)
    end
  end

  context 'when the argument is a positive integer' do
    it 'returns the factorial of that number' do
      expect(@solver.factorial(1)).to eq(1)
      expect(@solver.factorial(2)).to eq(2)
      expect(@solver.factorial(3)).to eq(6)
      expect(@solver.factorial(4)).to eq(24)
      expect(@solver.factorial(5)).to eq(120)
    end
  end

  context 'when the argument is a negative integer' do
    it 'raises an exception' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
      expect { @solver.factorial(-2) }.to raise_error(ArgumentError)
      expect { @solver.factorial(-3) }.to raise_error(ArgumentError)
    end
  end

  context 'when the argument is not an integer' do
    it 'raises an exception' do
      expect { @solver.factorial(1.5) }.to raise_error(ArgumentError)
      expect { @solver.factorial('a') }.to raise_error(ArgumentError)
      expect { @solver.factorial(nil) }.to raise_error(ArgumentError)
    end
  end
end
