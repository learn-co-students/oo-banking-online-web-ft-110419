class Transfer
  attr_accessor :receiver, :amount, :status, :sender
  
  def initialize(sender, receiver, amount)
    @amount = amount
    @status = "pending"
    @sender = sender
    @receiver = receiver
  end
  
  def valid?
  sender.valid? && receiver.valid?
  end
  
  def execute_transaction
    if valid? && sender.balance > amount && self.status == "pending"
    receiver.balance += amount
    sender.balance -= amount
    self.status = "complete"
    else
     reject
    end
  end
  
  
  def reject
    self.status = "rejected" 
    "Transaction rejected. Please check your account balance."
  end
  
  def reverse_transfer
    if valid? && receiver.balance > amount && self.status == "complete"
    receiver.balance -= amount
    sender.balance += amount
    self.status = "reversed"
    else
     reject
    end
  end
  
  
end
