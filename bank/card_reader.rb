require './account'
require './transact'

class CardReader

  def initialize(options = {})
    @account = Account.new
    @pass_code = ''
  end

  PASSCODE = '1234'

  def start
    loop do
      authorize while !authorized?
      selection = get_menu_selection
      perform_action(selection)
      say_goodbye
      deauthorize
    end
  end

  def authorize
    puts 'Scanning card for authentication'
    puts 'Please enter your passcode to continue: '
    @pass_code = gets.chomp.downcase
  end

  def authorized?
    return true if @pass_code == PASSCODE
  end

  def get_menu_selection
    puts 'Welcome to Fake Bank, where the transactions are real'
    puts 'but the money is fake!'
    puts "Press '1' for deposits"
    puts "Press '2' for withdrawals"
    puts "press '3' for your balance"
    puts "Press '4' for your transaction history"
    transaction_option = gets.chomp.downcase
  end

  def perform_action(selection)
    case greeting
    when '1'
      puts 'Initiate deposit function'
      deposit
    when '2'
      puts 'Initiate withdrawal function'
      withdraw
    when '3'
      puts 'GET balance'
      show_balance
    when '4'
      puts 'GET transaction history'
      show_history
    else 
      puts 'Please enter a selection on the menu'
    end
  end

  def deposit
    puts 'Enter amount'
    amount = gets.to_f
    @account.deposit(amount)
  end

  def withdraw
    puts 'How much'
    amount = gets.to_f
    @account.withdraw(amount)
  end

  def show_balance
    @account.balance
  end

  def amount
end
