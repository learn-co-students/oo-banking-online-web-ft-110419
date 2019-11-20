class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name, balance = 1000)
    @name = name
    @balance = balance
    @status = "open"
  end

  def deposit(cash)
    @balance += cash
  end

  def display_balance
      "Your balance is $#{@balance}."
  end

  def valid?
    if @balance > 0 && @status == "open"
        return true
      else
        return false
    end
  end

  def close_account
    @status = "closed"
  end

end #end of class
