require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :balance, :transaction_list

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def transaction(type, amount)
    @transaction = Transaction.new(type, amount)
    type == true ? @balance += amount : @balance -= amount
    @statement.transaction_list << @transaction
#    @transaction_list << [
#      @transaction.time,
#      @transaction.type,
#      @transaction.amount,
#      @balance
#    ]
  end

end
