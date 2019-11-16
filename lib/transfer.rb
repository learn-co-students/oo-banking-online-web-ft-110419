class Transfer
    attr_accessor :sender, :receiver, :status, :amount

    def initialize(sender, receiver, amount)
        @sender = sender
        @receiver = receiver
        @amount = amount
        @status = "pending"
    end

    def valid?
        @sender.valid? && @receiver.valid? && @sender.balance >= @amount
    end

    def execute_transaction
        if !valid?
            @status = "rejected"
            return "Transaction rejected. Please check your account balance."
        end
        if @status == "pending"
            @sender.deposit(-@amount)
            @receiver.deposit(@amount)
            @status = "complete"
        end
    end

    def reverse_transfer
        if @status == "complete"
            @sender.deposit(@amount)
            @receiver.deposit(-@amount)
        end
        @status = "reversed"
    end
end
