require 'spec_helper'
require './transact'
require './card_reader'

class Account
  def initialize
    @transaction = Transact.new
  end

  def amount
    @transaction.amount
  end

  def withdraw(amount)
    @balance -= amount
  end

  def deposit(amount)
    @balance += amount
  end

  def balance
    @balance
  end

  def balance=(new_balance)
    @balance = new_balance
  end
end
