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

def what_class(obj)
  case obj
  # 式の実行と条件分岐を同時にしてくれる
  when proc {|x| x.kind_of? String}
    String
  when proc {|x| x.kind_of? Numeric}
    Numeric
  else
    Class
  end
end

puts what_class "string"
puts what_class 1
puts what_class []