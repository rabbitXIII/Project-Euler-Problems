=begin
Rohit Gopal
	  This file is to factorize a given number into its primes
	  usage: ruby factorize.rb 
=end
require 'prime'

def is_prime?(number)
	unless n.is_a? Integer
		raise "Not even an integer"
	end	

	return	Prime.prime?(number)
end

def first_prime_factor(number)
	for test_factor in (1..number) do
		return test_factor if number % test_factor == 0 and test_actor.is_prime?
	end
end	

puts "Which number do you want to factorize?"
large_number = gets


prime_factors = Array.new


# The loop goes here for taking the input and factoring it


puts "The prime factors of #{large_number} are: "
puts prime_factors
