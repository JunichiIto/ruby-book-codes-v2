# shuffleメソッドで配列の要素をランダムに並び替える
numbers = [1, 2, 3, 4, 5].shuffle
numbers.each do |n|
  puts n
  # 5が出たら繰り返しを脱出する
  break if n == 5
end
#=> 3
#   1
#   5

# ----------------------------------------

numbers = [1, 2, 3, 4, 5].shuffle
i = 0
while i < numbers.size
  n = numbers[i]
  puts n
  break if n == 5
  i += 1
end
#=> 2
#   4
#   5

# ----------------------------------------

ret =
  while true
    break
  end
ret #=> nil

ret =
  while true
    break 123
  end
ret #=> 123

# ----------------------------------------

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
fruits.each do |fruit|
  # 配列の数字をランダムに入れ替え、3が出たらbreakする
  numbers.shuffle.each do |n|
    puts "#{fruit}, #{n}"
    # numbersのループは脱出するが、fruitsのループは継続する
    break if n == 3
  end
end
#=> apple, 1
#   apple, 3
#   melon, 2
#   melon, 3
#   orange, 2
#   orange, 1
#   orange, 3
