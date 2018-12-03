class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @time = Time.now
  end

  def deposit(amount)
    @balance += amount
    @time
  end

  def withdraw(amount)
    @balance -= amount
    @time
  end

  def statement
    "new balance: #{balance}"
  end

end
