class Customer
  @@next_customer_id = 2000

  attr_accessor :name, :email, :customer_id, :rewards

  def initialize(name, email)
    @name = name
    @email = email
    @customer_id = @@next_customer_id
    @@next_customer_id += 1
    @rewards = 0
  end

  def to_s
    "Name: #{@name}, Email: #{@email}, Customer ID: #{@customer_id}"
  end

  def show_cust
    puts "Name: #{@name}"
    puts "Email: #{@email}"
    puts "Customer ID: #{@customer_id}"
  end

  def show_rewards
    puts "Reward Points: #{@rewards}"
  end

  def farewell
    puts "\tWe hope you have a great day #{@name}\nBe sure to check your email at #{@email} for monthly coupons!"
  end
end
