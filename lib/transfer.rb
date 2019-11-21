class Transfer

  attr_accessor :amount, :sender, :receiver, :status

   def initialize (sender, receiver, amount)
    @amount = amount
    @sender = sender
    @receiver = receiver
    @status = "pending"
   end

   def valid?  #can check that both accounts are valid#calls on the sender and receiver's #valid? methods
    @sender.valid? && @receiver.valid? ? true : false
   end

   def execute_transaction
     if @status == "pending"
        @sender.balance -= @amount

      if self.valid?
         @receiver.balance += @amount
         @status = "complete"

     else
        @sender.balance < @amount   #rejects a transfer if the sender does not have enough funds (does not have a valid account)
        @status = "rejected"
        return "Transaction rejected. Please check your account balance."

     end
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
