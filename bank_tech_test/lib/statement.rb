class Statement

  attr_reader :transaction_list

  def initialize
    @transaction_list = []
  end

  def print_statement
    @transaction_list.join('  ||  ')
  end

end
