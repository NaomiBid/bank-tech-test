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
    if type == true
      @balance += amount
      @statement.transaction_list.push(
        "#{@transaction.time} ||  0  || #{@transaction.amount} || #{@balance}"
      )
    else
      @balance -= amount
      @statement.transaction_list.push(
        "#{@transaction.time} || #{@transaction.amount} ||  0  || #{@balance}"
      )
    end

  end

end
