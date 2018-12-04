class Statement

  attr_reader :transaction_list

  def initialize
    @transaction_list = []
  end

  def print_statement
    puts "         Date         || Credit || Debit || Balance "
    @transaction_list.each do |transaction|
      puts transaction
    end
  end

end
