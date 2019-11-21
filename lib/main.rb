require_relative './bank_account.rb'
require_relative './transfer.rb'
require 'pry'

amanda = BankAccount.new("Amanda")
avi = BankAccount.new("Avi")

binding.pry