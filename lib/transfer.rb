class Transfer
  # your code here
  
  attr_accessor :amount, :status
  attr_reader :sender, :receiver
  
  def initialize(sender, receiver, amount, status="pending")
    @amount = amount 
    @status = status
    @receiver = receiver 
    @sender = sender 
  end 
  
  def valid?
    @sender.valid? && @receiver.valid?
  end 
  
  def execute_transaction
    #sender bank account must be > 0 
    #access bank account of sender & receiver
    #deduct from sender & 
    if valid? && sender.balance > amount && self.status == "pending"
        @receiver.deposit(amount)
        @sender.deposit(amount * -1)
        @status = "complete"
    else 
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
    end 
  end 
  
  def reverse_transfer
    if @status == "complete" && valid? && @receiver.balance > amount
        @receiver.deposit(amount * -1)
        @sender.deposit(amount)
        self.status = "reversed"
      else 
        @status = "rejected"
        "Transaction rejected. Please check your account balance."
      end 
  end 
  
end
