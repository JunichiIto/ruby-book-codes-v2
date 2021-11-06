fruits = ['apple', 'orange', 'melon']
# ブロック引数のiには0、1、2・・・と要素の添え字が入る
fruits.each_with_index { |fruit, i| puts "#{i}: #{fruit}" }
#=> 0: apple
#   1: orange
#   2: melon
