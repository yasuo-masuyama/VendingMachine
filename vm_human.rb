require './vm.rb'

class Human
  def initialize
    @vm = VendingMachine.new
  end

  def buyer
    @vm.sell
    @vm.slot_money_repeat
    @vm.check_money_stock_repeat
    @vm.return_money
  end

  def admin
    puts "売り上げ金額は#{@vm.sales}円です。"
  end
end