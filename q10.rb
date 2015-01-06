# Problem 10 - Summation of primes
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# I'm going to try and do this by hand without the prime class

LIMIT = 10
CROSS_LIMIT = Math.sqrt(LIMIT).floor

nums = (2...LIMIT).to_a

(0..CROSS_LIMIT).each do |i|
	nums.select {|num| num == i || num % i != 0}

p nums
exit

	# .select {|num| num == 3 || num % 3 != 0} # remove multiples of 3 (above 3)
	# .select {|num| num == 5 || num % 5 != 0} # remove multiples of 5 (above 5)

sum = nums.reduce(:+)

puts sum