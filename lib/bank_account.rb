class BankAccount
  attr_accessor :balance, :transactions, :status
  attr_reader :name
  def initialize(name)
    @name = name
    self.balance = 1000
    self.status = "open"
    self.transactions = []
  end
  def deposit(add_money)
    self.balance = add_money + self.balance
  end
  def display_balance
    return "Your balance is $#{self.balance}."
  end
  def valid?
    return  self.status== "open" && self.balance > 0
  end
  def close_account
    self.balance = 0
    self.status = "closed"
  end
end
