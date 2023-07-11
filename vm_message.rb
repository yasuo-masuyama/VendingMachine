module VendingMachine_Message
  def under_line
    puts "----------------------------" 
  end

  def slot_money_repeat_message
    under_line
    puts "現在の金額は#{@slot_money}円です。"
    puts "まだ入金する？？？？🐯" 
    puts "1.入金する,2.入金しない" 
  end

  def check_money_stock_repeat_message
    under_line
    puts "まだ買うの？？😱"
    puts "1.買う,2.買わない"
  end

  def return_money_message
    under_line
    puts "お釣りでーす🙇"
    puts "#{@slot_money}円"
  end

  def sell_message
    puts "現在販売しているドリンクはこちらです💁‍♂️"
  end

  def slot_money_message
    puts "お金を入れてください"
  end

  def check_money_stock_message
    under_line
    puts "欲しいドリンクを入力してください"
  end
end
