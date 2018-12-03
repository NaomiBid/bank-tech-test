require 'account.rb'

describe Account do

  it "new account has a balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    before do
      @fake_time = Time.now
      Time.stub(:now) { @fake_time }
    end

    it "returns the time and date of the deposit" do
      account = Account.new
      expect(account.deposit(1000)).to equal @fake_time
    end

    it "adds the deposit amount to the current balance" do
      account = Account.new
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    before do
      @fake_time = Time.now
      Time.stub(:now) { @fake_time }
    end

    it "deducts the withdrawal amount from the current balance" do
      account = Account.new
      account.deposit(1000)
      account.withdraw(50)
      expect(account.balance).to eq 950
    end

    it "returns the time and date of the withdrawal" do
      account = Account.new
      account.deposit(1000)
      expect(account.withdraw(50)).to equal @fake_time
    end
  end

#  describe '#statement' do
#    it "displays the new balance after a deposit" do
#      account = Account.new
#      account.deposit(1000)
#      expect(account.statement).to include "new balance: 1000"
#    end
#  end

end
