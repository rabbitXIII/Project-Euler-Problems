=begin
Rohit Gopal
	  This file is to factorize a given number into its primes
	  usage: ruby factorize.rb 

	  Going to redo implementing a Quadratic Sieve later on.. for now this works (with small integers)
=end

require 'prime'

def prime_factorization( number )
	factors = Array.new
	potential_factor = 2
	while number != 1 
		while number % potential_factor == 0
			factors[potential_factor] = (factors[potential_factor] || 0) + 1
			number = number / potential_factor
			puts number
		end
		potential_factor += 1
	end
	return factors
end

def print_prime_factors( factors )
	1.upto(factors.length-1) do |factor|
		puts "#{factor} ^ #{factors[factor]}" if factors[factor]
	end
end

puts "Which number do you want to factor?"
number_to_factor = gets.chomp.to_i

factors = prime_factorization(number_to_factor)
puts "The factors are: "
print_prime_factors(factors)
