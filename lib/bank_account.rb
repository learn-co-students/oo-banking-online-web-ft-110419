class BankAccount
  
  attr_accessor :balance, :status
  attr_reader :name
  
 def initialize(name)
   @name = name
   @balance = 1000
   @status = "open"
 end
 
# def balance
#   balance = 1000 
# end 
 
# def status 
#   staus = 'open'
# end
 
 def deposit(deposit)
   self.balance += deposit
 end
 
 def display_balance
   "Your balance is $#{@balance}."
 end 
 
 def valid? #if bank is open and has a balance greater than 0 returns true 
   self.status == "open" && balance > 0
 end 
 
 def close_account 
   self.status = "closed"
 end
end
