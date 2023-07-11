require './vm_message.rb'

class VendingMachine
  include VendingMachine_Message
  attr_reader :slot_money, :sales

  MONEY = [10, 50, 100, 500, 1000].freeze

  def initialize
      @sales = 0
      @slot_money = 0
      @drink = {
                "🥤":{price: 120, stock: 5},
                "🤜🪽":{price: 200, stock: 5},
                "💦":{price: 100, stock: 5}
      }
  end

  def slot_money_repeat
    loop do
      slot_money
      listup
      slot_money_repeat_message
      answer = gets.chomp.to_i
      break if answer == 2
    end
  end

  def check_money_stock_repeat 
    loop do
      check_money_stock
      check_money_stock_repeat_message
      answer = gets.chomp.to_i
      break if answer == 2
    end
  end

  def return_money
    return_money_message
    @slot_money = 0
  end

  def sell
    sell_message
    @drink.each do |drink, info|
      puts "#{drink}: 価格#{info[:price]}円"
    end
    under_line
  end

  private

  def slot_money
    slot_money_message
    money = gets.chomp.to_i
    return puts"#{money}円は使えません。" unless MONEY.include?(money)
    @slot_money += money
  end

  def check_money_stock
    check_money_stock_message
    listup
    choose_drink = gets.chomp.to_sym 
    if @slot_money >= @drink.dig(choose_drink, :price) # && @drink.include?(choose_drink)(質問)
      management(choose_drink)
      puts "#{choose_drink}を1本購入しました"
    # else
      # puts "リストの中から選んでください"
    end
  end

  def listup
    @drink.each do |drink, info|
      if @slot_money >= info[:price] && info[:stock] > 0
        puts "#{drink}: 価格#{info[:price]}円" 
      end
    end
  end

  def management(choose_drink)
    @slot_money -= @drink.dig(choose_drink, :price)
    @sales += @drink.dig(choose_drink, :price)
    @drink[choose_drink][:stock] -= 1
  end
end