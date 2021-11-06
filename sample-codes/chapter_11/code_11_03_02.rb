# 文字列もマッチ
case 'Alice'
in obj
  "obj=#{obj}"
end
#=> "obj=Alice"

# 数値もマッチ
case 123
in obj
  "obj=#{obj}"
end
#=> "obj=123"

# 配列もマッチ
case [10, 20]
in obj
  "obj=#{obj}"
end
#=> "obj=[10, 20]"

# ----------------------------------------

record = [2019, 5]

# パターンにマッチした値（配列の要素）をin句の変数に代入する
case record
in [year]
  "#{year}年です"
in [year, month]
  # 要素数が2つなのでここにマッチ
  "#{year}年#{month}月です"
in [year, month, day]
  "#{year}年#{month}月#{day}日です"
end
#=> "2019年5月です"

# ----------------------------------------

alice = 'Alice'
bob = 'Bob'
name = 'Bob'

# ピン演算子を使って事前に定義した変数を参照する
case name
in ^alice # in 'Alice' と書いたのと同じ
  'Aliceさん、こんにちは！'
in ^bob   # in 'Bob' と書いたのと同じ
  'Bobさん、こんにちは！'
end
#=> "Bobさん、こんにちは！"

# ----------------------------------------

records = [
  [7, 7, 7],
  [6, 7, 5]
]

records.each do |record|
  case record
  in [n, ^n, ^n] # 要素数が3つでなおかつ3つとも同じ値であればマッチ
    puts "all same: #{record}"
  else
    puts "not same: #{record}"
  end
end
#=> all same: [7, 7, 7]
#   not same: [6, 7, 5]

# ----------------------------------------

records = [
  [Integer, 1, 2],
  [Integer, 3, 'X']
]

records.each do |record|
  case record
  in [klass, ^klass, ^klass] # 最後の2要素が最初の要素のクラスのインスタンスであればマッチ
    puts "match: #{record}"
  else
    puts "not match: #{record}"
  end
end
#=> match: [Integer, 1, 2]
#   not match: [Integer, 3, "X"]

# ----------------------------------------

# in節でインスタンス変数を使おうとすると構文エラーになる
case 1
in @n
  "@n=#{@n}"
end
#=> syntax error, unexpected instance variable (SyntaxError)

# ----------------------------------------

@n = 1
# ピン演算子とインスタンス変数を組み合わせると構文エラーになる
case 1
in ^@n
  '1です'
end
#=> syntax error, unexpected instance variable, expecting local variable or method (SyntaxError)

# ピン演算子を使いたい場合はいったんローカル変数に入れ直す必要がある
n = @n
case 1
in ^n
  '1です'
end
#=> "1です"

# ----------------------------------------

s = '1'

# ピン演算子とto_iメソッドを組み合わせた場合も構文エラー
case 1
in ^s.to_i
  '1です'
end
#=> syntax error, unexpected '.', expecting `then' or ';' or '\n' (SyntaxError)
