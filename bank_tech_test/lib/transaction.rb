require_relative 'account'

class Transaction
  attr_reader :amount, :time

  def initialize(amount)
    @amount = amount
    @time = Time.now
  end
end
