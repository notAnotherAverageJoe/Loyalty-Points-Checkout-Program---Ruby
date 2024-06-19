# customer.rb

class Customer
    # Class variable to keep track of the last assigned customer ID
    @@next_customer_id = 2000
  
    attr_accessor :name, :email, :customer_id
  
    def initialize(name, email)
      @name = name
      @email = email
      # Assigning the current value of @@next_customer_id and then increment it
      @customer_id = @@next_customer_id
      @@next_customer_id += 1
    end
  
    def to_s
      "Name: #{@name}, Email: #{@email}, Customer ID: #{@customer_id}"
    end
  
    def showCust
      puts "Name: #{@name}"
      puts "Email: #{@email}"
      puts "Customer ID: #{@customer_id}"
    
    end
    def showRewards
        puts "Reward Points: #{@rewards}"

      def farewell
        puts "\tWe hope you have a great day #{@name}\n
        Be sure to check your email at#{@email} for monthly coupons!"
      end
  end
end