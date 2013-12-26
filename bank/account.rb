require 'spec_helper'
require './transact'
require './card_reader'

class Account
  def initialize(*args)
    @balance = 0
    @transact = Transact.new
    # @history = args[:history]
  end

  def amount 
    @transact.amount
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

  def history
    Transact.count 
  end

  def balance=(new_balance)
    @balance = new_balance
  end

  def history=(new_history)
    @history = new_history
  end
end
