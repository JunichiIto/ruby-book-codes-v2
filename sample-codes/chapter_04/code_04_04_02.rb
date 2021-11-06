numbers = [1, 2, 3, 4, 5, 6]
# 戻り値が真になった要素だけが集められる
even_numbers = numbers.select { |n| n.even? }
even_numbers #=> [2, 4, 6]

# ----------------------------------------

numbers = [1, 2, 3, 4, 5, 6]
# 3の倍数を除外する（3の倍数以外を集める）
non_multiples_of_three = numbers.reject { |n| n % 3 == 0 }
non_multiples_of_three #=> [1, 2, 4, 5]
