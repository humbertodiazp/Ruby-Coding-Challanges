class Account 
    attr_reader :name, :balance
  
    def initialize(name, balance=100) 
      @name = name
      @balance = balance 
    end
  
    private
    def pin
      @pin = 1234
    end
  
    private
    def pin_error
      return "Access denied: incorrect PIN." 
    end
  
  
    public
    def display_balance(pin_number)
      puts pin_number == pin ? 
      "Balance: $#{@balance}." : pin_error
    end
  
    def withdraw(pin_number, amount)
      puts amount < @balance ? "": deposit_error 
     abort 'Try a different amount.' 
      puts pin_number == pin && amount < @balance ? 
      "Withdrew #{amount}. New balance: $#{@balance -= amount}." : pin_error
      end
    
  
  def withdrawl_error
    return "The maximum you are able to withdraw is $#{@balance}"
  end
  
  def deposit(pin_number, amount)
    puts pin_number == pin ? 
    "Deposited #{amount}. New balance: $#{@balance += amount}." : pin_error
    end
  end 
  
  
  
  checking_account = Account.new('bob', 1000000)
  
  checking_account.deposit(1234, 1000000)
  
   
  
  checking_account.withdraw(1234, 200)
  
  puts checking_account.withdraw(1234, 5000000000)
  
  puts checking_account.balance