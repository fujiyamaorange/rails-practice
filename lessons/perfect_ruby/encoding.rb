utf8 = 'こんにちは'.encode('UTF-8')
eucjp = 'こんにちは'.encode('EUC-JP')

# エンコーディングが異なる
puts utf8 == eucjp


utf8 = 'Hello'.encode('UTF-8')
eucjp = 'Hello'.encode('EUC-JP')

# ASCII文字だけで構成された文字列同士の比較は成り立つ
puts utf8 == eucjp


