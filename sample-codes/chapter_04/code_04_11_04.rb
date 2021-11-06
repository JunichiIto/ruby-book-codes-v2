numbers = [1, 2, 3, 4, 5]
numbers.each do |n|
  # 偶数であれば中断して次の繰り返し処理に進む
  next if n.even?
  puts n
end
#=> 1
#   3
#   5

# ----------------------------------------

numbers = [1, 2, 3, 4, 5]
i = 0
while i < numbers.size
  n = numbers[i]
  i += 1
  # while文の中でnextを使う
  next if n.even?
  puts n
end
#=> 1
#   3
#   5

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3, 4]
fruits.each do |fruit|
  numbers.each do |n|
    # 繰り返し処理が入れ子になっている場合は、一番内側のループだけが中断される
    next if n.even?
    puts "#{fruit}, #{n}"
  end
end
#=> apple, 1
#   apple, 3
#   melon, 1
#   melon, 3
#   orange, 1
#   orange, 3
