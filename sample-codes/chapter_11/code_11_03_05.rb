case {name: 'Alice', age: 20, gender: :female}
in {name: String, age: 18..}
  # マッチするが、:nameや:ageの値が取得できない！
end

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name: String => name, age: 18.. => age}
  # => 変数名 の形式でマッチしたオブジェクトを変数に代入できる（asパターン）
  "name=#{name}, age=#{age}"
end
#=> "name=Alice, age=20"

# ----------------------------------------

case {name: 'Alice', age: 20, gender: :female}
in {name: String, age: 18..} => person
  # マッチしたハッシュ全体を変数personに代入できる
  "person=#{person}"
end
#=> "person={:name=>\"Alice\", :age=>20, :gender=>:female}"
