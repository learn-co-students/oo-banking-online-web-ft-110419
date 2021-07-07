class Transfer
  attr_accessor :status, :amount
  attr_reader :sender, :receiver
  def initialize(sender, receiver, amount)
    @sender = sender 
    @receiver = receiver
    @amount = amount
    @status = "pending" 
  end
  
  def valid?
    valid = false
    if @receiver.valid? && @sender.valid?
      valid = true 
    end 
    valid
  end
  
  def execute_transaction
    if self.valid? && @amount < @sender.balance && @status == "pending"
      @sender.balance -= @amount 
      @receiver.balance += @amount 
      @status = "complete"
    else 
      @status = "rejected"
      return "Transaction rejected. Please check your account balance."
    end
  end
  
  def reverse_transfer
    if @status == "complete"
      @sender.balance += @amount 
      @receiver.balance -= @amount 
      @status = "reversed"
    end
  end
end
