case {name: 'Alice', age: 20}
in {name: name, age: age}
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"

# ----------------------------------------

case {name: 'Alice', age: 20}
in {name:, age:}
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"

# ----------------------------------------

case {name: 'Alice', age: 20}
in {age:, name:}
  # キーの順番が一致しなくてもマッチの結果には影響しない
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', age: 18.., gender:}
  # :nameの値がAlice、:ageの値が18以上かつ、キーに:genderが含まれればマッチ
  # :genderに対応する値は変数genderに代入される
  "gender=#{gender}"
end
#=> "gender=female"

# ----------------------------------------

case {name: 'Alice', children: ['Bob']}
in {name:, children: [child]}
  # :nameと:childrenのキーを持ち、なおかつ:childrenの値が要素1個の配列であればマッチ
  "name=#{name}, child=#{child}"
end
#=> "name=Alice, child=Bob"

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', gender:}
  # in節に:ageを指定していないが、:nameと:genderの条件が部分一致するので全体としてはマッチ
  "gender=#{gender}"
end
#=> "gender=female"

# ----------------------------------------

cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'}
]

cars.each do |car|
  case car
  in {name:, engine:}
    # The BeatleもPriusもどちらもこのパターンにマッチする
    puts "Gasoline: #{name} / engine: #{engine}"
  in {name:, motor:}
    puts "EV: #{name} / motor: #{motor}"
  in {name:, engine:, motor:}
    # Priusはガソリン車のパターンに部分一致するので下の処理は絶対に実行されない
    puts "Hybrid: #{name} / engine: #{engine} / motor: #{motor}"
  end
end
#=> Gasoline: The Beatle / engine: 105ps
#   Gasoline: Prius / engine: 98ps
#   EV: Tesla / motor: 306ps

# ----------------------------------------

case {a: 1}
in {}
  # {a: 1}は空のハッシュではないのでここにはマッチしない
  'empty'
in {a:}
  "a=#{a}"
end
#=> "a=1"

case {}
in {}
  # 空のハッシュ同士で完全一致するのでここにマッチする
  'empty'
in {a:}
  "a=#{a}"
end
#=> "empty"

# ----------------------------------------

# in節でkey => value形式を使うと構文エラーになる
case {name: 'Alice', age: 20}
in {:name => n, :age => a}
  # 省略
end
#=> syntax error, unexpected symbol literal, expecting label or ** or **arg or string literal (SyntaxError)

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', **rest}
  # :nameがキーで値がAliceならマッチ。それ以外のキーと値は任意で変数restに代入
  "rest=#{rest}"
end
#=> "rest={:age=>20, :gender=>:female}"

# ----------------------------------------

# **を最初に使うと構文エラーになる
case {name: 'Alice', age: 20, gender: :female}
in {**rest, gender:}
  # 省略
end
#=> syntax error, unexpected ',', expecting '}' (SyntaxError)

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name: 'Alice', **}
  # :nameがキーで値がAliceならマッチ。それ以外のキーと値は任意（変数として使わない）
  # ただし、in {name: 'Alice'} と書いたときと違いがない
  'matched'
end
#=> "matched"

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name:, **nil}
  # :name以外のキーがないことがマッチの条件になるので、case節のハッシュはマッチしない
end
#=> {:name=>"Alice", :age=>20, :gender=>:female} (NoMatchingPatternError)

case {name: 'Alice'}
in {name:, **nil}
  # :name以外のキーがないので、case節のハッシュはマッチする
  "name=#{name}"
end
#=> "name=Alice"

# ----------------------------------------

# in節の一番外側の{}は省略可能
case {name: 'Alice', age: 20}
in age:, name:
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"
