require 'spec_helper'
require 'account'
require 'transact'

class CardReader

  def initialize
    PASSCODE = '1234'
    @pass_code = ''
  end

  def scan
    puts 'Scanning card for authentication'
    puts 'Please enter your passcode to continue: '
    @pass_code = gets.chomp.downcase
  end

  def authorize
    return greeting if authorized?
    return scan unless authorized?
  end

  def authorized?
    return true if @pass_code == PASSCODE
  end

  def greeting
    puts 'Welcome to Fake Bank, where the transactions are real'
    puts 'but the money is fake!'
    puts "Press '1' for deposits"
    puts "Press '2' for withdrawals"
    puts "press '3' for your balance"
    puts "Press '4' for your transaction history"
    transaction_option = gets.chomp.downcase
  end

  def authenticate(scan)
    if scan == PASSCODE
      case greeting
      when '1'
        puts 'Initiate deposit function'
      when '2'
        puts 'Initiate withdrawal function'
      when '3'
        puts 'GET balance'
      when '4'
        puts 'GET transaction history'
      else 
        puts 'Please enter a selection on the menu'
      end
    else
      puts 'There was an error authenticating your account, try again'
      scan
    end
  end
end
