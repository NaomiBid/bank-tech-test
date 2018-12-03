require_relative 'statement'

class Account

  attr_reader :balance

  def initialize
    @balance = 0
    @time
  end

  def transaction(type, amount)
    if type == "deposit"
      @balance += amount
    else
      @balance -= amount
    end
    @time = Time.now
  end

  def statement
#    "new balance: #{balance}"
  end

end
