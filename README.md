# 🛒 Loyalty Point Checkout System

Welcome to the Loyalty Point Checkout System! This project is a simple Ruby-based system for managing customer checkouts and rewards. The system prompts users for their information, processes their checkouts, and calculates rewards based on their purchases.


## 📋 Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Usage](#usage)
- [Code Structure](#code-structure)
- [Contributing](#contributing)
- [License](#license)

## ✨ Features

- **Customer Signup**: Users can sign up by entering their name and email.
- **Checkout Process**: Users can choose to pay with cash or card.
- **Rewards Calculation**: Users earn reward points based on their purchase amount.
- **Multiple Customers**: Supports multiple customer sign-ups in one session.

## 🛠️ Installation

1. **Clone the repository**:
    ```sh
    git clone https://github.com/yourusername/checkout-system.git
    cd checkout-system
    ```

2. **Install dependencies** (if any):
    ```sh
    # No dependencies required for this project
    ```

## 🚀 Usage

1. **Run the program**:
    ```sh
    ruby main.rb
    ```

2. **Follow the prompts**:
    - Enter the number of customers signing up.
    - Provide the name and email for each customer.
    - Choose the payment method (cash or card).
    - Enter the cash amount if paying by cash.
    - Receive the final sale amount and earned rewards.

## 🗂️ Code Structure

- **main.rb**: The main script that runs the program and handles user interaction.
- **customer.rb**: Defines the `Customer` class, which stores customer information.
- **checkout.rb**: Defines the `Checkout` class, which handles the checkout process and rewards calculation.

### main.rb
```ruby
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
```
## Special thanks ->
ATGTG