#!/usr/bin/env ruby

# Project Euler
# Problem 1
# Author: Christopher Olsen

# Problem Statement:
# If we list all the natural numbers below 10 that are multiples of 3 or 5, 
# we get 3, 5, 6 and 9. The sum of these multiples is 23.

# Find the sum of all the multiples of 3 or 5 below 1000.

require 'benchmark'

def problem1()
  total = 0
  
  for i in 3..999
    if i%3 == 0 or i%5 == 0
      total += i
    end
  end
  return total
end

print Benchmark.measure { problem1() }
print "The total is: #{problem1()}\n"

#   0.000000   0.000000   0.000000 (  0.000308)
# The total is: 233168

