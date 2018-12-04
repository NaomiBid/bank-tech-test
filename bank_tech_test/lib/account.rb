require_relative 'transaction'

class Account

  attr_reader :balance, :transaction_list

  def initialize
    @balance = 0
    @transaction_list = []
  end

  def transaction(type, amount)
    @transaction = Transaction.new(type, amount)
    type == true ? @balance += amount : @balance -= amount
    @transaction_list << [
      @transaction.time,
      @transaction.type,
      @transaction.amount,
      @balance
    ]
  end

end
