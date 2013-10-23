def pmt(interest_rate, number_of_payments, principal_value)
	numerator = ((principal_value * ((1 + interest_rate)**number_of_payments))) 
	denominator = (((1 + interest_rate)**number_of_payments) - 1)
	return numerator / denominator / 100
end

# Line 1 effectively copy-pastes in any code you wrote in challenge_1.rb
# It's similar to connecting an external stylesheet to an HTML file.

# ===========
# CHALLENGE 2
# ===========

# Below is an array of hashes. Each hash in the array represents one rate quote from a bank.

loan_quotes = [
  { "bank" => "Elm Street Bank", "interest_rate" => 0.013},
  { "bank" => "Oak Street Bank", "interest_rate" => 0.009},
  { "bank" => "Ash Street Bank", "interest_rate" => 0.011}
]

# Let's ask our user for the parameters of the loan:

puts "Enter the number of payments:"
number_of_payments = gets.chomp.to_i

puts "Enter the loan amount:"
principal_value = gets.chomp.to_f

# Now, loop through the array of loan quotes using .each:
#   For each option, tell the user how much the monthly payment will be to that bank.
#   Re-use the pmt method that you defined in Challenge 1.

# ====================
loan_quotes.each do |quote_hash|
	puts "If you are with " + quote_hash["bank"] + ", then your interest rate is " + quote_hash["interest_rate"].to_s + " and your monthly payment is " + "#{pmt(quote_hash["interest_rate"], number_of_payments, principal_value)}"
	
end


# ====================
