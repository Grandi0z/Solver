class Solver
  def factorial(numb)
    raise ArgumentError, 'numb must be an integer' unless numb.is_a?(Integer)
    raise ArgumentError, 'numb must be non-negative' if numb.negative?

    result = 1
    while numb.positive?
      result *= numb
      numb -= 1
    end
    result
  end

  def reverse(word)
    raise ArgumentError, 'word must be a string' unless word.is_a?(String)
    
    word.reverse
  end

  def fizzbuzz(numb)
    raise ArgumentError, 'must be an integer' unless numb.is_a?(Integer)

    result = ''

    result += 'fizz' if (numb % 3).zero?

    result += 'buzz' if (numb % 5).zero?

    return numb.to_s if result.empty?

    result
  end
end
solver = Solver.new

puts solver.factorial(0)
