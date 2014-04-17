#!/usr/bin/env ruby

# Project Euler
# Problem 9
# Author: Christopher Olsen

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
# a2 + b2 = c2
#
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
#
# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

require 'benchmark'

def problem9()
  # the plan is to blow through them and check while we go
  for i in (1..332) do                # 332+333+334=999, 333+334+335=1002 
    for j in (2..1 + ((1000-i)/2)) do # not exact, but close
      k = 1000 - i - j
      if i**2 + j**2 == k**2
        return [i,j,k]
      end
    end
  end
end

puts Benchmark.measure { problem9() }
puts "The solution is #{ problem9() }"

#   0.050000   0.000000   0.050000 (  0.063699)
# The solution is [200, 375, 425]
