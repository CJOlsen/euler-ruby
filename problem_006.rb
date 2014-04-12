#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# Project Euler
# Problem 6
# Author: Christopher Olsen


# The sum of the squares of the first ten natural numbers is,
# 1**2 + 2**2 + ... + 10**2 = 385
#
# The square of the sum of the first ten natural numbers is,
# (1 + 2 + ... + 10**)2 = 55**2 = 3025
#
# Hence the difference between the sum of the squares of the first ten natural 
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred 
# natural numbers and the square of the sum.


require 'benchmark'

def problem6()
  sum_last = 0
  total_one = 0
  for i in 1..100
    total_one += i
    sum_last += i**2
  end
  sum_first = total_one**2

  diff = sum_first - sum_last
  return diff
end

print Benchmark.measure {problem6()}
print "The solution is #{problem6()}\n"

#   0.000000   0.000000   0.000000 (  0.000049)
# The solution is 25164150
