require 'blackboard'


# "Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# By considering the terms in the Fibonacci sequence whose values do not exceed four million, find the sum of the even-valued terms."

fib = fibonacci_sequence(4000000)
print 'The sum of even-valued terms for the fibonacci sequence whose values do not exceed four million is : '
puts fib.evens.sum

