def fibonacci_sequence(upper_limit)
  # Returns an Array of the fibonacci sequence starting at 1 whose values do not exceed upper_limit
  if upper_limit < 1
    return []
  elsif upper_limit < 2
    return [1]
  end

  s = [1, 2]
  while s[-1] + s[-2] < upper_limit
    s.append(s[-1] + s[-2])
  end
  return s
end

class Array
  def evens
    # Returns a new Array of only the even Integer elements
    self.select { |val| val.is_a?(Integer) && val.even? }
  end

  def sum
    self.reduce(:+)
  end
end
