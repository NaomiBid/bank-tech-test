require_relative 'statement'

class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @time
  end

  def deposit(amount)
    @balance += amount
    @time = Time.now
  end

  def withdraw(amount)
    @balance -= amount
    @time = Time.now
  end

  def statement
#    "new balance: #{balance}"
  end

end
