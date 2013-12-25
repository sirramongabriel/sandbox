require 'spec_helper'
require 'account'
require 'card_reader'

class Transact
  def initialize(*args)
    @ammount = args[:ammount]
    @status = args[:status]
  end

  def type
  end

  def status
    @status
  end

  def ammount
    @ammount
  end

  def status=(new_status)
    @status = new_status
  end

  def ammount=(new_ammount)
    @ammount = new_ammount
  end

  def dispense
  end

  def receive
  end

  def transfer
  end
end
