# Problem 6 - Sum square difference
# The sum of the squares of the first ten natural numbers is 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.

# Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

max = 100

sum_of_squares = (1..max).to_a.map{|n| n**2}.inject(:+)
square_of_sums = (1..max).to_a.inject(:+) ** 2

diff = square_of_sums - sum_of_squares

puts diff