class VendingMachine
  attr_reader :slot_money

  # ステップ０　お金の投入と払い戻しの例コード
  # ステップ１　扱えないお金の例コード

  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  MONEY = [10, 50, 100, 500, 1000].freeze

  # （自動販売機に投入された金額をインスタンス変数の @slot_money に代入する）
  def initialize
      # 最初の自動販売機に入っている金額は0円
      @slot_money = 0
  # コーラが5本在庫であるようにする。
      @drink = {
                "🥤":{price: 120, stock: 5},
                "🤜🪽":{price: 200, stock: 5},
                "💦":{price: 100, stock: 5}
      }
      @sales = 0
  end

  # 10円玉、50円玉、100円玉、500円玉、1000円札を１つずつ投入できる。
  # 投入は複数回できる。new
  def slot_money
    puts "お金を入れてください"
    money = gets.chomp.to_i
    # 想定外のもの（１円玉や５円玉。千円札以外のお札、そもそもお金じゃないもの（数字以外のもの）など）
    # が投入された場合は、投入金額に加算せず、それをそのまま釣り銭としてユーザに出力する。
    return false unless MONEY.include?(money)
    # 自動販売機にお金を入れる
    @slot_money += money
  end

  def slot_money_repeat
    loop do
      slot_money
      listup
      puts "----------------------------"
      puts "現在の金額は#{@slot_money}円です。"
      puts "まだ入金する？？？？🐯" 
      puts "1.入金する,2.入金しない" 
      answer = gets.chomp.to_i
      break if answer == 2
    end
  end

  def check_money_stock
    puts "----------------------------"
    puts "欲しいドリンクを入力してください"
    listup
    choose_drink = gets.chomp.to_sym 
    # 投入金額がコーラの120円よりも大きいかつ在庫が購入数が在庫数よりも小さい場合🐸
    if  @drink[choose_drink][:stock] == 0
      puts "在庫がない"
    elsif @slot_money >= @drink[choose_drink][:price]
      management(choose_drink)
      puts "#{choose_drink}を1本購入しました"
    else
      puts "金が足りねえ"
    end
  end

  def check_money_stock_repeat 
    loop do
      check_money_stock
      puts "----------------------------"
      puts "まだ買うの？？😱"
      puts "1.買う,2.買わない"
      answer = gets.chomp.to_i
      break if answer == 2
    end
  end

  # 払い戻し操作を行うと、投入金額の総計を釣り銭として出力する。
  def return_money
    # 返すお金の金額を表示する
    puts "----------------------------"
    puts "お釣りでーす🙇"
    puts "#{@slot_money}円"
    # 自動販売機に入っているお金を0円に戻す
    @slot_money = 0
  end

  # 投入金額で購入可能なドリンクでリストで表示する（値段と在庫があるもの）
  def listup
    @drink.each do |drink, info|
      if @slot_money >= info[:price] && info[:stock] > 0
        puts "#{drink}: 価格#{info[:price]}円" 
      end
    end
  end

  def sell
    puts "現在販売しているドリンクはこちらです💁‍♂️"
    @drink.each do |drink, info|
      puts "#{drink}: 価格#{info[:price]}円"
    end
    puts "----------------------------"
  end

  private

  def management(choose_drink)
    @slot_money -= @drink[choose_drink][:price]
    @sales += @drink[choose_drink][:price]
    @drink[choose_drink][:stock] -= 1
  end
end

class Human < VendingMachine
  def buyer
    vm = VendingMachine.new
    vm.sell
    vm.slot_money_repeat
    vm.check_money_stock_repeat
    vm.return_money
  end

  def admin
    puts "売り上げ金額は#{@sales}円です。"
  end
end

class Operation < Human
human = Human.new
  loop do 
    puts "1.購入者 2.管理者 3.終了" 
    answer = gets.chomp.to_i
    if answer == 1
      human.buyer
    elsif answer == 2
      human.admin
    elsif answer == 3
      break
    end
  end
end

Operation.new