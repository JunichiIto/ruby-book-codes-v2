numbers = [1, 2, 3, 4]
sum = 0
# ブロックの外にあるsumとは別物の変数sumを用意する
numbers.each do |n; sum|
  # 別物のsumを10で初期化し、ブロックパラメータの値を加算する
  sum = 10
  sum += n
  # 加算した値をターミナルに表示する
  puts sum
end
#=> 11
#   12
#   13
#   14

# ブロックの中で使っていたsumは別物なので、ブロックの外にsumには変化がない
sum #=> 0
