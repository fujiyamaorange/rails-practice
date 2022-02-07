def block_sample
  puts 'stand up'
  yield if block_given?
  puts 'sit down'
end

block_sample do
  puts 'in the middle'
end


def display_value
  # yieldはブロックで最後に評価された値を返す
  puts yield
end

display_value do 
  1234
end

def with_current_time
  yield Time.now
end

with_current_time do |time|
  # yieldの呼び出しはブロックに引数として渡される(この場合time)
  puts time.year
end

# 仮引数としてブロックを受け取る→一時的に保持できる
# ブロックがProcオブジェクトとして渡される
def block_sample(&block)
  puts 'stand up'

  # callに引数を渡すこともできる
  block.call 'here' if block

  puts 'sit down'
end

block_sample do |param|

  puts "#{param if param} in the middle"
end

