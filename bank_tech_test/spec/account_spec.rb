require 'account.rb'

describe Account do
  it 'new account has a balance of 0' do
    expect(subject.balance).to eq 0
  end

  describe '#transaction' do
    before do
      @fake_time = Time.now
      Time.stub(:now) { @fake_time }
    end

    it 'returns the time and date of the transaction' do
      account = Account.new
      expect(account.debit(1000)).to eq ["#{@fake_time} ||  0  || 1000 || 1000"]
    end

    it 'adds the deposit amount to the current balance' do
      account = Account.new
      account.debit(1000)
      expect(account.balance).to eq 1000
    end

    it 'deducts the withdrawal amount from the current balance' do
      account = Account.new
      account.credit(50)
      expect(account.balance).to eq -50
    end
  end
end
