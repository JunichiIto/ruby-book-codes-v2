numbers = [1, 2, 3, 4, 5]
new_numbers = []
numbers.each { |n| new_numbers << n * 10 }
new_numbers #=> [10, 20, 30, 40, 50]

# ----------------------------------------

numbers = [1, 2, 3, 4, 5]
# ブロックの戻り値が新しい配列の各要素になる
new_numbers = numbers.map { |n| n * 10 }
new_numbers #=> [10, 20, 30, 40, 50]
