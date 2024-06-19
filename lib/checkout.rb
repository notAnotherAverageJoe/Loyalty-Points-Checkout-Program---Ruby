class Checkout < Customer
    attr_accessor :cash, :card, :expenses, :finalSale, :rewards
  
    def initialize(name, email, cash, card, expenses, finalSale,rewards)
      super(name, email)
      @cash = cash
      @card = card
      @expenses = rand(10..200)
      @finalSale = @expenses + 5
      @rewards = rewards
    end
  
    def to_s
      super + ", Cash: #{@cash}, 
                 Card: #{@card},   
                 Expenses: $#{@expenses}, 
                 Final Sale: $#{@finalSale}
                 Total Rewards: #{@rewards}pts"
    end
  
    def process_checkout
        puts "Processing checkout for #{@name}..."
        puts "Expenses: #{@expenses}"
        puts "Will you be using 'cash' or 'card' today?"
        payment = gets.chomp.downcase
        if payment == 'cash'
            puts "Please enter the cash amount: "
            cashOnHand = gets.chomp.to_i
            puts "Ah, you gave me #{cashOnHand} dollars!"
            if cashOnHand >= @finalSale
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
      
        puts "Final sale amount: #{@finalSale}"
        if @finalSale >= 10 and @finalSale <= 49
            @rewards +=10
            puts "You have recieved 10 pts"
        elsif @finalSale >= 50 and @finalSale <= 99
            @rewards += 20
            puts "You have recieved 20 pts"
        elsif @finalSale >= 100 and @finalSale <= 199
            @rewards += 40
            puts "You have recieved 40 pts"
        elsif @finalSale >= 200
            @rewards += 60
            puts "You have recieved 60 pts"
        else
            @rewards +=2
            puts "You have recieved 2 pts"
        end
      

        puts "Thank you for shopping with us!"
         
    end
  end
