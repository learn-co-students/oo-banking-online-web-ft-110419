class BankAccount
  attr_reader :name
  attr_accessor :balance, :status
  
  def initialize(name="Avi", balance = 1000, status = "open")
    @name = name
    @status = status
    @balance = balance
    
  end
  
  def deposit(deposited)
     self.balance += deposited
  end
  
  def display_balance
    "Your balance is $#{balance}."
  end

  def valid?
    if status == "open" && balance > 0 then true
    else
    false
    end
  end

  def close_account
    self.status = "closed"
  end


end