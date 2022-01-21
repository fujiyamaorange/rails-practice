require './menu.rb'

ayataka = Menu.new(name: '綾鷹', price: 150)
iemon = Menu.new(name: '伊右衛門', price: 200)
namacha = Menu.new(name: '生茶', price: 100)

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