require 'pry'

class BankAccount
  attr_accessor :balance, :status
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(amount)
    @balance += amount
  end

  def withdrawal(amount)
    @balance > amount ? @balance -= amount : amount
  end

  def balance
    @balance
  end

  def display_balance
    "Your balance is $#{self.balance}."
  end

  def valid?
    self.status == "open" && self.balance > 0 ? true : false
    # binding.pry
  end

  def close_account
    self.status = "closed"
    self.balance = 0
  end

end
