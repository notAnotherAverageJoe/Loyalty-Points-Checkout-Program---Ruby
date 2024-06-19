require_relative 'customer'
require_relative 'checkout'

def run
  print "Please enter your name: "
  name = gets.chomp

  print "Please enter your email: "
  email = gets.chomp

  customer = Customer.new(name, email)
  checkout = Checkout.new(name, email, 0, true)

  puts "\nCheckout Details:"
  puts checkout.to_s

  checkout.process_checkout
  puts "------------------------------"
  puts "\nDetailed Customer Information:"
  checkout.show_cust
  checkout.show_rewards

  customer.farewell
end

print "How many customers are signing up: "
num_customers = gets.chomp.to_i

num_customers.times do |index|
  puts "\nCustomer ##{index + 1}:"
  run
end
