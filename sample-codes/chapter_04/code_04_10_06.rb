while true
  # 無限ループ用の処理
end

# ----------------------------------------

loop do
  # 無限ループ用の処理
end

# ----------------------------------------

numbers = [1, 2, 3, 4, 5]
loop do
  # sampleメソッドでランダムに要素を1つ取得する
  n = numbers.sample
  puts n
  break if n == 5
end
#=> 3
#   2
#   4
#   5

# ----------------------------------------

while true
  n = numbers.sample
  puts n
  break if n == 5
end
#=> 4
#   1
#   5
