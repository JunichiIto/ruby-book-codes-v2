# 文字列にRubyのコードを格納する
code = '[1, 2, 3].map { |n| n * 10 }'

# evalメソッドに渡すと、文字列がRubyのコードとして実行される
eval(code) #=> [10, 20, 30]

# ----------------------------------------

# OSのcatコマンドでテキストファイルの中身を表示する
puts `cat lib/fizz_buzz.rb`
#=> def fizz_buzz(n)
#     if n % 15 == 0
#       'Fizz Buzz'
#   以下省略

# ----------------------------------------

puts `type lib\\fizz_buzz.rb`

# ----------------------------------------

puts %x{cat lib/fizz_buzz.rb}

# ----------------------------------------

str = 'a,b,c'

# str.upcaseを呼ぶのと同じ
str.send(:upcase)     #=> "A,B,C"

# str.split(',')を呼ぶのと同じ
str.send(:split, ',') #=> ["a", "b", "c"]
