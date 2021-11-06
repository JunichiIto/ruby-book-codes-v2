case [1, 2, 3, 4, 5]
in [first, *]
  "first=#{first}"
end
#=> "first=1"

case [1, 2, 3, 4, 5]
in [*, last]
  "last=#{last}"
end
#=> "last=5"

# ----------------------------------------

case [13, 11, 9, 6, 12, 10, 15, 5, 7, 14]
in [*, 10.. => a, 10.. => b, 10.. => c, *]
  # findパターンで配列のなから10以上の整数が3つ連続する部分を抜き出す
  # 3つの整数はそれぞれ変数a, b, cに代入される
  "a=#{a}, b=#{b}, c=#{c}"
end
#=> "a=12, b=10, c=15"

# ----------------------------------------

# FindパターンはRuby 3.0では実験的機能であるため警告が表示される
case [1, 2, 3]
in [*, n, *]
  # ...
end
#=> warning: Find pattern is experimental, and the behavior may change in future versions of Ruby!
