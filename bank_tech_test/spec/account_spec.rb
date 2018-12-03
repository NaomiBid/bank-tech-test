require 'account.rb'

describe Account do
  it "new account has a balance of 0" do
    expect(subject.balance).to eq 0
  end
end
