for name in %w(Alice Bob Carol)
  puts name
end

# whileやuntile,forに渡す式はブロックではない
# →ループ内外で変数のスコープは変わらない
# →イテレータの場合は変わる→普通はeachを使う
puts name