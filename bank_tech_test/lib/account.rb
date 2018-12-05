require_relative 'transaction'
require_relative 'statement'

class Account

  attr_reader :balance, :statement

  def initialize(statement = Statement.new)
    @balance = 0
    @statement = statement
  end

  def credit(amount)
    @transaction = Transaction.new(amount)
    @balance -= amount
    @statement.transaction_list.push(
      "#{@transaction.time} || #{@transaction.amount} ||  0  || #{@balance}"
    )
  end

  def debit(amount)
    @transaction = Transaction.new(amount)
    @balance += amount
    @statement.transaction_list.push(
      "#{@transaction.time} ||  0  || #{@transaction.amount} || #{@balance}"
    )
  end

end
