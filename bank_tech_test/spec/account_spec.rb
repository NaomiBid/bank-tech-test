require 'account.rb'

describe Account do

  it "new account has a balance of 0" do
    expect(subject.balance).to eq 0
  end

  describe '#deposit' do
    it "adds the deposit amount to the current balance" do
      account = Account.new
      account.deposit(1000)
      expect(account.balance).to eq 1000
    end
  end

  describe '#withdraw' do
    it "deducts the withdrawal amount from the current balance" do
      account = Account.new
      account.deposit(1000)
      account.withdraw(50)
      expect(account.balance).to eq 950
    end
  end

end
