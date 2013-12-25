require 'transact'
require 'card_reader'
require 'spec_helper'

class Account
  def initialize(*args)
    @balance = args[:balance]
    @history = args[:history]
  end

  def withdraw
  end

  def deposit
  end

  def balance
    @balance
  end

  def history
    @history
  end

  def balance=(new_balance)
    @balance = new_balance
  end

  def history=(new_history)
    @history = new_history
  end
end
