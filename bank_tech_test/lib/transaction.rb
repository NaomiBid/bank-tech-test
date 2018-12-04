require_relative 'account'

class Transaction

  attr_reader :type, :amount, :time

  def initialize(type, amount)
    @type = type
    @amount = amount
    @time = Time.now
  end

end
