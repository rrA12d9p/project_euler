# Problem 4 - Largest palindrome product
# A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.

# Find the largest palindrome made from the product of two 3-digit numbers.

# check if a number/string is a palindrome
def is_palindrome?(n)
	return n.to_s == n.to_s.reverse
end

# find the largest palindrome product given num digits for factors 
def largest_palindrome(digits)
	max = ("9" * digits).to_i
	min = 10 ** (digits - 1)

	max_pal = 0

	max.downto(min) do |x|
		max.downto(min) do |y|
			z = x * y
			max_pal = z if z > max_pal && is_palindrome?(z)
		end
	end

	return max_pal
end

puts largest_palindrome(3)