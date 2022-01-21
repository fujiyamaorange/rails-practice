require './drink.rb'

ayataka = Drink.new(name: '綾鷹', price: 80, amount: 525)
iemon = Drink.new(name: '伊右衛門', price: 140, amount: 525)
namacha = Drink.new(name: '生茶', price: 140, amount: 535)

ochas = [ayataka, iemon, namacha]

puts "以下のお茶があります．どれにしますか？"

index = 0
ochas.each do |ocha|
  puts "#{index}. #{ocha.info}"
  index += 1
end

order = gets.chomp.to_i
if order + 1 > ochas.size
  selected_menu = ochas[0]
else
  selected_menu = ochas[order]
end

puts "選ばれたのは#{selected_menu.name}でした"