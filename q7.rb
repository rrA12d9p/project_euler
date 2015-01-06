# Problem 7 - 10001st prime
# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see that the 6th prime is 13.

# What is the 10_001st prime number?

require 'prime'

n = 10_001

prime = Prime.first(n)[-1]

puts prime