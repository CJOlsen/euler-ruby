#!/usr/bin/env ruby

# Project Euler
# Problem 7
# Author: Christopher Olsen



# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10 001st prime number?


require 'benchmark'

def even_check(number)
  # return true if even
  if number % 2 == 0
    return true
  end
  return false
end


def prime_check(number)
  # return true if prime
  if number == 1
    return true
  elsif even_check(number)
    return false
  else
    divisor = 3
    while number > divisor
      if number % divisor == 0
        return false
      else
        divisor += 2
      end
    end
    return true
  end
end
    

def nth_prime(n)
  current = 1 # current number being checked
  counter = 0 # a count of found primes
  while true
    if counter == n
      return current - 1 # it was the last one, not this one
    elsif prime_check(current)
      current += 1
      counter += 1
    else
      current +=1
    end
  end
end

def problem7()
  return nth_prime(10001)
end


print Benchmark.measure {problem7()}
print "The solution is #{problem7()}\n"

#  32.040000   0.080000  32.120000 ( 42.095647)
# The solution is 104743
