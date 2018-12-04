require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def transaction(type, amount)
    @transaction = Transaction.new(type, amount)
    type == true ? @balance += amount : @balance -= amount
    @statement.transaction_list.push(
      @transaction.time,
      @transaction.type,
      @transaction.amount,
      @balance
    )
  end

end
