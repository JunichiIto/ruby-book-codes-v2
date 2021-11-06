numbers = [1, 2, 3, 4]
sum = 0
# ブロックをあえて改行せずに書く
numbers.each do |n| sum += n end
sum #=> 10

# ----------------------------------------

numbers = [1, 2, 3, 4]
sum = 0
# do ... endの代わりに{}を使う
numbers.each { |n| sum += n }
sum #=> 10

# ----------------------------------------

numbers = [1, 2, 3, 4]
sum = 0
# {}でブロックを作り、なおかつ改行を入れる
numbers.each { |n|
  sum += n
}
sum #=> 10
