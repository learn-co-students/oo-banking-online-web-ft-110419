class BankAccount
  attr_reader :balance, :name, :status, :transfer

    #initialize
  def initialize(bank_account)
    @bank_account = "bank_account"
    @name = "Avi"
    @balance = 1000
    @status = "open"

  end
 
 #deposit
 #can deposit money into its account

 def deposit(money)
  @balance += money
end

def status=(status)
  @status
end

def balance=(balance)
  @balance
end
#display_balance
#can display its balance



def display_balance
puts = "Your balance is $#{self.balance}."
end


#valid?
#is valid with an open status and a balance greater than 0 

def valid?
  if @status = "open" && @balance > 0 
     true
  
  else
 false
  end
end


def close_account
  @status = "closed"
end
def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
      sender.deposit(self.amount)
      receiver.withdrawal(self.amount)
      self.status = "reversed"
    else
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."      
    end
  end


end

