require 'spec_helper'
require './account'
require './card_reader'

class Transact
  attr_accessor :amount

  # def amount
  #   @amount
  # end

  # def amount=(new_amount)
  #   @amount = new_amount.to_f
  # end

  def dispense(amount)
    @account.balance.to_f
    puts "Withdrawal success of $#{amount}. Please take your FAKE cash."
    puts "Your new balance is: #{@balance}"
  end

  def receive(amount)
    puts "Deposit success of $#{amount}. We appreciate your business."
    puts "Your new balance is: #{@balance}"
  end
end
