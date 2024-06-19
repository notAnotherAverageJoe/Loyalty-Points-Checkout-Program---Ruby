# signup.rb

# Loading the Customer class from customer.rb
require_relative 'customer'
require_relative 'checkout'


def run
  # Prompt the user for their name
  print "Please enter your name: "
  name = gets.chomp

  # Prompt the user for their email
  print "Please enter your email: "
  email = gets.chomp

  # Create a new Customer object
  customer = Customer.new(name, email)

  # Show detailed customer information
 
  # Created a Checkout objects
  checkout = Checkout.new(name, email, 0, true, 0, 0, 0)  # Assuming cash and card are always $100

  # Output the Checkout object details
  puts "\nCheckout Details:"
  puts checkout.to_s
  
  # Process the checkout
  checkout.process_checkout
  puts " ------------------------------ "
  puts "\nDetailed Customer Information:"
  checkout.showCust
  checkout.showRewards

  customer.farewell
  


end

# Prompt the user for the number of customers signing up
print "How many customers are signing up: "
num_customers = gets.chomp.to_i

# Loop to handle multiple sign-ups
num_customers.times do |index|
  puts "\nCustomer ##{index + 1}:"
  run
end
