# ===========
# CHALLENGE 1
# ===========

# Suppose we are building a loan payment calculator.

# Define a method called "pmt" which will accept three arguments:
#  - interest rate
#  - number of payments
#  - principal value of loan
# The method should return the size of each payment given these three things.
# Before we can teach the computer how to automate a task,
#   we usually have to do some research on how the task is done:
#   http://en.wikipedia.org/wiki/Mortgage_calculator

# =========================================
# Your code to define the method goes here.
# =========================================

puts "What is the monthly interest rate?"
interest_rate = gets.chomp.to_f

puts "What is the total number of monthly payments?"
number_of_payments = gets.chomp.to_i

puts "What is the principal value?"
principal_value = gets.chomp.to_f


def pmt(interest_rate, number_of_payments, principal_value)
	numerator = ((principal_value * ((1 + interest_rate)**number_of_payments))) 
	denominator = (((1 + interest_rate)**number_of_payments) - 1)
	return numerator / denominator / 100
end


puts "Your monthly payment will be #{pmt(interest_rate, number_of_payments, principal_value)}."
