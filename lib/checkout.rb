class Checkout < Customer
    attr_reader :expenses, :final_sale
    attr_accessor :cash, :card
  
    def initialize(name, email, cash, card)
      super(name, email)
      @cash = cash
      @card = card
      @expenses = rand(10..200)
      @final_sale = @expenses + 5
    end
  
    def to_s
      super + ", Cash: #{@cash}, Card: #{@card}, Expenses: $#{@expenses}, Final Sale: $#{@final_sale}, Total Rewards: #{@rewards}pts"
    end
  
    def process_checkout
      puts "Processing checkout for #{@name}..."
      puts "Expenses: #{@expenses}"
      puts "Will you be using 'cash' or 'card' today?"
      payment = gets.chomp.downcase
  
      if payment == 'cash'
        puts "Please enter the cash amount: "
        cash_on_hand = gets.chomp.to_i
        puts "Ah, you gave me #{cash_on_hand} dollars!"
        if cash_on_hand >= @final_sale
          puts "That is enough money, thank you!"
        else
          puts "Sorry, that is not enough money."
          return
        end
      elsif payment == 'card'
        puts "Please wait to insert your credit or debit card"
      else
        puts "Invalid payment method."
        return
      end
  
      puts "Final sale amount: #{@final_sale}"
      add_rewards
  
      puts "Thank you for shopping with us!"
    end
  
    private
  
    def add_rewards
      case @final_sale
      when 10..49
        @rewards += 10
        puts "You have received 10 pts"
      when 50..99
        @rewards += 20
        puts "You have received 20 pts"
      when 100..199
        @rewards += 40
        puts "You have received 40 pts"
      when 200..Float::INFINITY
        @rewards += 60
        puts "You have received 60 pts"
      else
        @rewards += 2
        puts "You have received 2 pts"
      end
    end
  end
  