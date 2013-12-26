require 'spec_helper'
require './account'
require './card_reader'

class Transact
  def initialize(*args)
    # @@count += 1
    @amount = 0
  end

  def self.count
    @@count
  end

  def amount
    @amount
  end

  def amount=(new_amount)
    @amount = new_amount.to_f
  end

  def dispense(amount)
    puts "Withdrawal of $#{amount} success. Please take your FAKE cash."
    puts "Your current balance is: #{@balance}"
  end

  def receive(amount)
    puts ""
  end

  def transfer
  end


end
