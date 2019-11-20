class BankAccount
  
  attr_reader :name 
  attr_accessor :bank_account, :balance, :status
  
  def initialize(name, status="open")
    @bank_account = bank_account
    @name = name 
    @balance = 1000 
    @status = status
  end 
  
  def deposit(deposit)
    @balance += deposit
  end 
  
  def display_balance
    return "Your balance is $#{self.balance}."
  end 
  
  def valid?
    self.balance > 0 && self.status == "open"
  end 
  
  def close_account(status="closed")
    @status = status 
  end 

end
