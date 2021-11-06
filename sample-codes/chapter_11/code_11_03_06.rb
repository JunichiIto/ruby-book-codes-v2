case 2
in 0 | 1 | 2
  'matched'
end
#=> "matched"

# ----------------------------------------

case {name: 'Bob', age: 25}
in {name: 'Alice' | 'Bob' => name, age:}
  # :nameの値が'Alice'または'Bob'、かつ:ageというキーがあればマッチ
  # さらに:nameと:ageの値をそれぞれ変数nameとageに代入する
  "name=#{name}, age=#{age}"
end
#=> "name=Bob, age=25"

# ----------------------------------------

# Variableパターンで配列の要素を変数に代入しつつ、Alternativeパターンと組み合わせようとすると構文エラーになる
case [2021, 4, 1]
in [y, m, d] | Date
  # ...
end
#=> illegal variable in alternative pattern (y) (SyntaxError)

# ----------------------------------------

case [2021, 4, 1]
in [Integer, Integer, Integer] | Date => obj
  # 整数を3つ含む配列またはDateオブジェクトであればマッチ
  # さらにマッチしたオブジェクト全体が変数objに代入される
  "obj=#{obj}"
end
#=> "obj=[2021, 4, 1]"

# ----------------------------------------

# (無効なコード)
# もし以下のような書き方を許してしまうと、マッチに成功しても変数aの値が未定義になってしまう
case 0
in 0 | a
  a
end

# ----------------------------------------

case [2021, 4, 1]
in [_, _] | [_, _, _] # 配列の要素が2個、または3つならマッチ（要素の値は任意）
  'matched'
end
#=> "matched"
