puts 'Hello, world!'.rainbow
#=> Hello, world!

puts [1, 2, 3].rainbow
#=> [1, 2, 3]

# ----------------------------------------

"\e[31mABC\e[0m"

# ----------------------------------------

# 紙面では再現できないが"ABC"の文字列が赤色で出力される
puts "\e[31mABC\e[0m"
#=> ABC

# ----------------------------------------

# 文字列でも配列でもどちらでもrainbowメソッドが呼び出せる
puts 'Hello, world!'.rainbow
puts [1, 2, 3].rainbow
