# Problem 3 - Largest prime factor
# The prime factors of 13195 are 5, 7, 13 and 29.

# What is the largest prime factor of the number 600851475143 ?

require 'prime'

n = 600_851_475_143

# create array of prime factors
prime_factors = n.prime_division.map do |factor|
	factor[0]
end

p prime_factors.max