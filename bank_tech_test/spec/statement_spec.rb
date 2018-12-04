require 'statement.rb'

describe Statement do

  describe "#transaction_list" do
    before do
      @fake_time = Time.now
      Time.stub(:now) { @fake_time }
    end

    it "stores a transaction" do
      account = Account.new
      account.transaction(true, 1000)
      expect(account.statement.transaction_list).to eq [@fake_time, true, 1000, 1000]
    end
  end

 describe "#print_statement" do
    before do
      @fake_time = Time.now
      Time.stub(:now) { @fake_time }
    end
    
    it "prints out the transaction list in a statement format" do
      account = Account.new
      account.transaction(true, 1000)
      expect(account.statement.print_statement).to eq "#{@fake_time}  ||  true  ||  1000  ||  1000"
    end
  end

end
