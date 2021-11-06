fruits = ['apple', 'orange', 'melon']

# eachで繰り返しつつ、1から始まる添え字を取得する
fruits.each.with_index(1) { |fruit, i| puts "#{i}: #{fruit}" }
#=> 1: apple
#   2: orange
#   3: melon

# mapで処理しつつ、10から始まる添え字を取得する
fruits.map.with_index(10) { |fruit, i| "#{i}: #{fruit}" }
#=> ["10: apple", "11: orange", "12: melon"]
