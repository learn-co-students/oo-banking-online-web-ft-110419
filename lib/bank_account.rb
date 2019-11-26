require 'pry'
class BankAccount

attr_accessor :balance, :status
attr_reader :name

@@bank_accounts = []

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
    @@bank_accounts << self
  end

  def self.all
    @@bank_accounts
  end

  def deposit(deposit)
    @balance += deposit
  end

  def display_balance
    "Your balance is $#{@balance}."
  end

  def valid?
    if false
      @status == "closed" && @balance == 0
    else
      @status == "open" && @balance != 0
    end
end

  def close_account
    @status = "closed"
  end

end
