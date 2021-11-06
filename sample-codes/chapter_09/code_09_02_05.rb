begin
  1 / 0
rescue ZeroDivisionError
  puts '0で除算しました'
end
#=> 0で除算しました

# ----------------------------------------

begin
  # NoMethodErrorを発生させる
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
end
#=> undefined method `foo' for "abc":String (NoMethodError)

# ----------------------------------------

begin
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
rescue NoMethodError
  puts '存在しないメソッドが呼び出されました'
end
#=> 存在しないメソッドが呼び出されました

# ----------------------------------------

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError
  puts '0で除算したか、存在しないメソッドが呼び出されました'
end
#=> 0で除算したか、存在しないメソッドが呼び出されました

# ----------------------------------------

begin
  'abc'.foo
rescue ZeroDivisionError, NoMethodError => e
  puts "0で除算したか、存在しないメソッドが呼び出されました"
  puts "エラー: #{e.class} #{e.message}"
end
#=> 0で除算したか、存在しないメソッドが呼び出されました
#   エラー: NoMethodError undefined method `foo' for "abc":String
