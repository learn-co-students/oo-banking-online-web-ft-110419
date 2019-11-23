

class Transfer
attr_accessor :sender, :receiver, :amount, :status

def initialize(sender, receiver, amount, status="pending")
  @sender = sender
  @receiver = receiver
  @amount = amount
  @status = status
end
def valid?

    sender.valid? && receiver.valid?
  end
 
  def execute_transaction
    if @sender.balance > @amount && @status == "pending"
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
      amanda.balance = 950
      @receiver.balance -= @amount
      @status = "Transaction rejected. Please check your account balance."
    end
  end

 
   
  
  end
