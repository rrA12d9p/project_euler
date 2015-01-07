# Problem 10 - Summation of primes
# The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.

# Find the sum of all the primes below two million.

# I'm going to try and do this by hand without the prime class

def primes_up_to(num)

	cross_limit = Math.sqrt(num).floor

	# create a new array with num number of elements, each set as true
	prime_bools = Array.new(num, true)

	prime_bools.each_with_index do |is_prime, i|
		# we can stop once our steps are at the square root of the limit
		break if i >= cross_limit

		# skip first step (0+0+1 steps over everything) and
		# non-prime steps, as they're redundant
		next if i == 0 || !is_prime

		# set each bool we step over to false, starting at i+i+1, which
		# ensures we keep the first primes true 
		(i+i+1 .. num).step(i+1) { |i| prime_bools[i] = false }
		# puts "removed #{i+1}s #{prime_bools.each_index.select { |i| prime_bools[i] }.map { |j| j+1 }.drop(1)}"
	end

	# select all the remaining trues from prime_bools
	prime_bools = prime_bools.each_index.select { |i| prime_bools[i] }

	# map the prime_bools to their index/number and drop the 1 (not a prime)
	primes = prime_bools.map { |i| i+1 }.drop(1)

end

p primes_up_to(2_000_000).inject(:+)