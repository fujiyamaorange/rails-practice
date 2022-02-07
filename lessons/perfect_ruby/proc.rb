p1 = Proc.new {|val| val.upcase}
# Procオブジェクトにする感じ？
p2 = :upcase.to_proc

puts p1.call('hi')
puts p2.call('hi')

people = %w(Alice Bob Carol)
# container.map(&:method_name)でメソッドを呼ぶことができる
puts people.map(&:upcase)

# putsをgreetで呼び出せるようにする
alias greet puts

greet 'hi'