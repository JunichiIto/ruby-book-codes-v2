case [1, 2, 3]
in [a, b, c]
  # 配列の要素が3つであればマッチし、なおかつ対応する要素が変数a, b, cに代入される
  "a=#{a}, b=#{b}, c=#{c}"
end
#=> "a=1, b=2, c=3"

# ----------------------------------------

case [1, [2, 3]]
in [a, [b, c]]
  "a=#{a}, b=#{b}, c=#{c}"
end
#=> "a=1, b=2, c=3"

# ----------------------------------------

case [1, [2, 3]]
in [a, b]
  # bには配列[2, 3]が代入される
  "a=#{a}, b=#{b}"
end
#=> "a=1, b=[2, 3]"

# ----------------------------------------

case [1, 999, 3]
in [1, n, 3]
  # 配列の要素数は3、かつ最初と最後の要素がそれぞれ1と3であればマッチ
  # 2番目の要素は任意で対応する値が変数nに代入される
  "n=#{n}"
end
#=> "n=999"

# ----------------------------------------

case ['Alice', 999, 3]
in [String, 10.., n]
  # 配列の要素数は3、かつ最初の要素は文字列（String型）、かつ2番目の要素が10以上であればマッチ
  # 3番目の要素は任意で対応する値が変数nに代入される
  "n=#{n}"
end
#=> "n=3"

# ----------------------------------------

# in節に同じ変数名を2回以上使うと構文エラーになる
case [1, 2, 3]
in [a, a, 3]
  # 省略
end
#=> duplicated variable name (SyntaxError)

# 同じ値を同じ変数に代入しようとした場合も同様にエラーになる
case [1, 1, 3]
in [a, a, 3]
  # 省略
end
#=> duplicated variable name (SyntaxError)

# ----------------------------------------

case [1, 2, 3]
in [_, _, 3]
  # 要素数が3つで最後の要素が3ならマッチ
  # 最初と2番目の要素は任意（_は変数として使わない）
  'matched'
end
#=> "matched"

# _の代わりに_aを使う（意味は上のコードと同じ）
case [1, 2, 3]
in [_a, _a, 3]
  'matched'
end
#=> "matched"

# ----------------------------------------

case [1, 2, 3, 4, 5]
in [1, *rest]
  # 最初の要素が1であればマッチ
  # 2番目以降の要素は任意（0個以上）で、対応する要素が配列として変数restに代入される
  "rest=#{rest}"
end
#=> "rest=[2, 3, 4, 5]"

# ----------------------------------------

case [1, 2, 3, 4, 5]
in [*rest, 5]
  # 最後の要素が5であればマッチ
  # それ以外の要素は任意（0個以上）で、対応する要素が配列として変数restに代入される
  "rest=#{rest}"
end
#=> "rest=[1, 2, 3, 4]"

case [1, 2, 3, 4, 5]
in [1, *rest, 5]
  # 最初と最後の要素がそれぞれ1と5であればマッチ
  # それ以外の要素は任意（0個以上）で、対応する要素が配列として変数restに代入される
  "rest=#{rest}"
end
#=> "rest=[2, 3, 4]"

# ----------------------------------------

case [1, 2, 3, 4, 5]
in [1, *]
  # 最初の要素が1であればマッチ
  # 2番目以降の要素は任意だが、変数には入れなくてよい
  'matched'
end
#=> "matched"

# ----------------------------------------

case [1, 2, 3, 4, 5]
in [1, ]
  'matched'
end
#=> "matched"

# ----------------------------------------

# in節の一番外側の[]は省略可能
case [1, [2, 3]]
in a, [b, c]
  "a=#{a}, b=#{b}, c=#{c}"
end
#=> "a=1, b=2, c=3"
