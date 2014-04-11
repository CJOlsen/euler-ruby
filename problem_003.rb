#!/usr/bin/env ruby

# Project Euler
# Problem 3
# Author: Christopher Olsen

# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?


# Note:
# We can check 2 and go up finding all prime factors fairly quickly if every
# time we find a factor we divide the upper limit by that factor.  So we'll
# find *all* the prime factors of the number and then find the largest among
# them.

require 'benchmark'

def problem3()
  upper = 600851475143
  lower = 2
  factors = Array.new
  
  while upper != 1
    if upper % lower == 0
      factors.push lower # the lower number is a prime factor, upper is ??
      upper /= lower
    else
      lower += 1
    end
  end
  return factors[-1]
end

print Benchmark.measure { problem3() }  
print "The solution is #{problem3()}\n"

#   0.010000   0.000000   0.010000 (  0.003733)
# The solution is 6857

  

  
