
require "pry"
class Transfer
  # your code here
  attr_reader :sender, :receiver
  attr_accessor  :status, :amount
  def initialize(sender,receiver,amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  def valid?
    sender.valid? && receiver.valid?
  end
  def execute_transaction

  if sender.balance < @amount || receiver.status =="closed"
       self.status ="rejected"
       "Transaction rejected. Please check your account balance."

  elsif   self.valid? && self.status == "pending"
    sender.balance-=@amount
    receiver.balance+=@amount
    self.status = "complete"
    else
      nil
  end
end
  def reverse_transfer
    if self.status == "complete"
    sender.balance+=@amount
    receiver.balance-=@amount
    self.status = "reversed"
  else
    nil
  end
  end

end
