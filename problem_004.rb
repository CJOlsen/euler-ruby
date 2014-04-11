#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

# Project Euler
# Problem 4
# Author: Christopher Olsen


# A palindromic number reads the same both ways. The largest palindrome made 
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.


# The Plan:
# Check every combination (all 899*899 of them), check each for palindrome,
# keep the largest.  (No fancy palindrome properties here...)

require 'benchmark'

def problem4()
  largest = 0;
  for i in 100..999
    for j in 100..999
      sum = i * j
      if sum.to_s() == sum.to_s().reverse
        if sum > largest
          largest = sum
        end
      end
    end
  end
  return largest
end

print Benchmark.measure { problem4() }
print "The solution is #{problem4()}\n"


#   1.100000   0.000000   1.100000 (  1.327652)
# The solution is 906609
