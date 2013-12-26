require 'spec_helper'

describe 'Account' do
  let(:account) { FactoryGirl.build(:account) }
  let(:transact) { FactoryGirl.build(:transact) }
  context 'upon object creation' do
    it 'requires a default balance' do
      expect(account.balance).to eql 0
    end
  end

  context 'handling a deposit' do
    it 'accepts an amount that must be added to balance' do
      transact.amount = 12.95
      account.balance += transact.amount
      expect(account.balance).to eql 12.95
    end

    it 'does not return previous balance after a deposit' do
      transact.amount = 12.95
      account.balance += transact.amount
      expect(account.balance).not_to eql 0
    end
  end

  context 'handling a withdrawal' do
    it 'accepts an amount that must be subtracted from balance' do
      account.balance = 22.95
      transact.amount = 10.00
      account.withdraw(transact.amount)
      expect(account.balance).not_to eql 22.95
    end

    it 'does not return previous balance after a withdrawal' do
      account.balance = 22.95
      transact.amount = 12.95
      account.balance -= transact.amount
      expect(account.balance).not_to eql 22.95
    end
  end
end
