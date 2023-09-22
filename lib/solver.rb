class Solver
  def factorial(numb)
    raise ArgumentError, 'n must be an integer' unless numb.is_a?(Integer)
    raise ArgumentError, 'n must be non-negative' if numb.negative?

    result = 1
    while numb.positive?
      result *= numb
      numb -= 1
    end
    result
  end
end
solver = Solver.new

puts solver.factorial(0)
