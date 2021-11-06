# 間違った例外処理の例
begin
  # NoMethodErrorを発生させる
  'abc'.foo
rescue NameError
  # NoMethodErrorはここで捕捉される
  puts 'NameErrorです'
rescue NoMethodError
  # このrescue節は永遠に実行されない
  puts 'NoMethodErrorです'
end
#=> NameErrorです

# ----------------------------------------

begin
  'abc'.foo
rescue NoMethodError
  # NoMethodErrorはここで捕捉される
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end
#=> NoMethodErrorです

# ----------------------------------------

begin
  # NameErrorを発生させる
  Foo.new
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
end
#=> NameErrorです

# ----------------------------------------

begin
  # ZeroDivisionErrorを発生させる
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue StandardError
  puts 'その他のエラーです'
end
#=> その他のエラーです

# ----------------------------------------

begin
  # ZeroDivisionErrorを発生させる
  1 / 0
rescue NoMethodError
  puts 'NoMethodErrorです'
rescue NameError
  puts 'NameErrorです'
rescue # 例外クラスを指定しない
  puts 'その他のエラーです'
end
#=> その他のエラーです
