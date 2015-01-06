# Problem 5 - Smallest multiple
# 2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
# What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'prime'

# create an array of all unique prime factors
prime_factors = (2..20).map {|n| n.prime_division}.flatten(1).uniq

# group the factors by base
groups = prime_factors.group_by { |pair| pair[0] }

# leave only the factors with the highest exponents per base
max_factor_groups = groups.map do |group|
	group[1].max_by {|pair| pair[1]}
end

# expand base-exponent pairs to one number
max_factor_groups.map! { |group| group[0] ** group[1]}

# multiply all the factors together for the LCF
solution = max_factor_groups.inject(:*)

p solution