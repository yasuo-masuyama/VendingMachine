require './vm_human.rb'

class Operation
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