#!/usr/bin/env ruby

# Project Euler
# Problem 5
# Author: Christopher Olsen



# 2520 is the smallest number that can be divided by each of the numbers from 
# 1 to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the 
# numbers from 1 to 20?



# note:
# We only have to check the numbers 11-20 because 1-10 will always correspond 
# (i.e. if it's divisible by 16 it will also be divisible by 2,4,8)
# We can also count upwards by 20's which reduces the search space.

require 'benchmark'

def problem5()
  # this may look unreasonable to some, but how many languages make nested if
  # statements look this good?
  current = 20
  while true
    if current % 19 == 0
      if current % 18 == 0
        if current % 17 == 0
          if current % 16 == 0
            if current % 15 == 0
              if current % 14 == 0
                if current % 13 == 0
                  if current % 12 == 0
                    if current % 11 == 0
                      return current
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    current += 20
  end
end

print Benchmark.measure {problem5()}
print "The solution is #{problem5()}\n"

#   1.340000   0.010000   1.350000 (  1.493652)
# The solution is 232792560


# or, we can do it with less characters and ~10x more time....
def problem5_b()
  nums = [19,18,17,16,15,14,13,12,11]
  current = 20
  while true
    if nums.all? {|x| current % x == 0}
      return current
    end
    current += 20
  end
end

print Benchmark.measure {problem5_b()}
print "The second solution is #{problem5_b()}\n"

#  11.730000   0.040000  11.770000 ( 13.235900)
# The second solution is 232792560
  

# but what if we reverse the array?....
def problem5_c()
  nums = [11,12,13,14,15,16,17,18,19]
  current = 20
  while true
    if nums.all? {|x| current % x == 0}
      return current
    end
    current += 20
  end
end

print Benchmark.measure {problem5_c()}
print "The third solution is #{problem5_c()}\n"

#  11.980000   0.010000  11.990000 ( 13.661421)
# The third solution is 232792560

## meh...apparently that's not what's slowing it down
