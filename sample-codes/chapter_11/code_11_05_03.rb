# 先にローカル変数のnameを定義しておく
name = 'Alice'

# パターンマッチを実行する
case {name: 'Bob', age: 25}
in {name:, age:}
  "name=#{name}, age=#{age}"
end
#=> "name=Bob, age=25"

# 変数nameはパターンマッチによって上書きされる
name #=> "Bob"

# パターンマッチを抜けてもパターンマッチ内で代入された変数は使用可能
age  #=> 25

# ----------------------------------------

# (望ましくないコード例)
case {name: 'Bob', age: 25}
in {name:, age: 30.. => age}
  # :ageの条件がマッチしないのでここは実行されない
else
  # 上のin節で変数の代入が完了しており、ここで変数nameやageが使えてしまうが、
  # 未定義の挙動であるため、こうしたコードを書いてはいけない
  "not matched: name=#{name}, age=#{age}"
end
#=> "not matched: name=Bob, age=25"
