fruits = ['apple', 'orange', 'melon']
# mapとして処理しつつ、添え字も受け取る
fruits.map.with_index { |fruit, i| "#{i}: #{fruit}" }
#=> ["0: apple", "1: orange", "2: melon"]

# ----------------------------------------

fruits = ['apple', 'orange', 'melon']
# 名前に"a"を含み、なおかつ添え字が奇数である要素を削除する
fruits.delete_if.with_index { |fruit, i| fruit.include?('a') && i.odd? }
#=> ["apple", "melon"]

# ----------------------------------------

fruits = ['apple', 'orange', 'melon']
# ブロック無しでメソッドを呼び出すとEnumeratorオブジェクトが返される
p fruits.each      #=> #<Enumerator: ["apple", "orange", "melon"]:each>
p fruits.map       #=> #<Enumerator: ["apple", "orange", "melon"]:map>
p fruits.delete_if #=> #<Enumerator: ["apple", "orange", "melon"]:delete_if>
