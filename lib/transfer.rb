class Transfer
  attr_accessor :amount, :sender, :receiver, :status
  
  
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @status = "pending"
    @amount = amount 
  end 
  
  def valid?
    sender.valid? && receiver.valid? ? true : false 
  end
  
  def reject_transfer
    @status = "rejected"
    "Transaction rejected. Please check your account balance."
  end
  
  def execute_transaction
    if valid? && sender.balance > @amount && @status == "pending"
      sender.balance -= @amount
      receiver.balance += @amount
      @status = "complete"
    else
      reject_transfer
    end
  end
  
  def reverse_transfer
    if valid? && receiver.balance > @amount && @status == "complete"
      receiver.balance -= @amount
      sender.balance += @amount
      @status = "reversed"
    else
      reject_transfer
    end
  end 
end
