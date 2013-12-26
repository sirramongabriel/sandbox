require 'spec_helper'

describe 'Account' do
  let(:account) { FactoryGirl.build(:account) }
  context 'upon object creation' do
    it 'requires a default balance' do
      expect(account.balance).to eql 0
    end
  end

  context 'handling a deposit' do
    it 'amount must be added to balance' do
      account.balance += 2
      expect(account.balance).to eql account.balance += account.amount
    end
  end
end
