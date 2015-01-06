# Special Pythagorean triplet - Problem 9
# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which
# a^2 + b^2 = c^2

# For example, 3^2 + 4^2 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

# returns all factor pairs for n as a nested array
def factor_pairs(n)
	factors = [[n, 1]]

	2.upto(Math.sqrt(n)) do |i|
		factors << [n/i,i] if n % i == 0
	end

	return factors
end

# return all pythagorean triplets as a nested array given b
def pythagorean_triplets(side)
	# a = m^2 - n^2
	# b = 2mn
	# c = m^2 + n^2

	if side.even?
		factor_pairs = factor_pairs(side/2)
	else
		factor_pairs = factor_pairs(side)
	end

	triplets = []

	factor_pairs.each do |factor_pair|
		m = factor_pair[0]
		n = factor_pair[1]

		a = m ** 2 - n ** 2
		c = m ** 2 + n ** 2
		b = 2 * m * n

		if side.even?
			triplets << [a,b,c]
		else
			triplets << [a,b,c].map{|e| e/2}
		end

	end

	return triplets

end

# return the triplet with a specified sum or nil if it doesn't exist
def triplet_with_sum(sum)
	sum.times do |i|
		triplets = pythagorean_triplets(i)

		triplets.each do |triplet|
			triplet_sum = triplet.reduce(:+)
			return triplet.sort if triplet_sum == sum
		end
	end
	return nil
end

sum = 1000
triplet = triplet_with_sum(sum)

if triplet.nil?
	puts "No triplets exist with a sum of #{sum}"
else
	puts "Triplet #{triplet.inspect} has a sum of #{sum}!"
	puts "Product: #{triplet.reduce(:*)}"
end
