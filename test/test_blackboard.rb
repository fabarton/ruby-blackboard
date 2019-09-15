require "blackboard"
require "test/unit"

class TestSumExtension < Test::Unit::TestCase
  def test_sum
    assert_equal(0, [0].sum)
    assert_equal(10, [2, 4, 4].sum)
    assert_equal(0, [-1, 1, -2, 2].sum)
    assert_equal(1.2, [1, 0.2].sum)
  end

  def test_sum_empty
    assert_equal(nil, [].sum)
  end

  def test_failures
    assert_raise TypeError do
      [0, 'a'].sum
    end
  end
end


class TestEvensExtension < Test::Unit::TestCase
  def test_evens
    assert_equal([0, 2, 4, 6, 8, 10], (0..10).to_a.evens)
    assert_equal([], [1, 3, 5].evens)
    assert_equal([-10, -8, -6, -4, -2], (-10..-1).to_a.evens)
  end

  def test_edge_cases
    assert_equal([0, 2], [0, 1, 2, 'a', 2.0, 2.2, true].evens)
  end
end


class TestFibonacciSequence < Test::Unit::TestCase
  def test_basic
    assert_equal([], fibonacci_sequence(-1))
    assert_equal([], fibonacci_sequence(0))
    assert_equal([1], fibonacci_sequence(1))
    assert_equal([1, 2], fibonacci_sequence(2))
    assert_equal([1, 2, 3, 5, 8, 13, 21, 34, 55, 89], fibonacci_sequence(90))
  end

  def test_failures
    assert_raise ArgumentError do
      fibonacci_sequence('a')
    end
  end
end