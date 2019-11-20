class BankAccount
 attr_accessor :balance, :status
 attr_reader :name

 def initialize(name)
   @name = "Avi"
   @balance = 1000
   @status = "open"
  end
 end

  
