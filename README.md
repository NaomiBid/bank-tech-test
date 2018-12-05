# bank-tech-test
A simple bank account that provides statements for it's customers

Technologies: Ruby, Rspec
Makers Academy - Week 10 Solo Tech Test

## Challenge

You should be able to interact with the your code via a REPL like IRB or the JavaScript console. (You don't need to implement a command line interface that takes input from STDIN.)
Deposits, withdrawal.
Account statement (date, amount, balance) printing.
Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

Given a client makes a deposit of 1000 on 10-01-2012 And a deposit of 2000 on 13-01-2012 And a withdrawal of 500 on 14-01-2012 When she prints her bank statement Then she would see

date       || credit || debit   || balance

14/01/2012 ||        || 500.00  || 2500.00

13/01/2012 || 2000.00||         || 3000.00

10/01/2012 || 1000.00||         || 1000.00


### Installation

To clone the repo
$ git clone https://github.com/NaomiBid/bank-tech-test
$ cd bank-tech-test
$ bundle

### Rspec

$ cd bank-tech-test
$ rspec

### To use in irb:

$ load 'lib/account.rb'

$ account = Account.new

$ account.debit(10)$ account.credit(10)

$ account.statement.print_statement
