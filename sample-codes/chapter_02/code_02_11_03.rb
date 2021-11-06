a = 'ruby'

# upcaseだと変数aの値は変化しない
a.upcase  #=> "RUBY"
a         #=> "ruby"

# upcase!だと変数aの値も大文字に変わる
a.upcase! #=> "RUBY"
a         #=> "RUBY"

# ----------------------------------------

# 引数の内容を変更しない安全バージョン
def reverse_upcase(s)
  s.reverse.upcase
end

# 引数の内容を破壊的に変更してしまう危険バージョン
def reverse_upcase!(s)
  s.reverse!
  s.upcase!
  s
end

s = 'ruby'

# 安全バージョンは引数として渡した変数sの内容はそのまま
reverse_upcase(s) #=> "YBUR"
s #=> "ruby"

# 危険バージョンは引数として渡した変数sの内容が変更される
reverse_upcase!(s) #=> "YBUR"
s #=> "YBUR"

# ----------------------------------------

odd? = 1.odd?
#=> syntax error, unexpected '=' (SyntaxError)
#   odd? = 1.odd?
#        ^

upcase! = 'ruby'.upcase!
#=> syntax error, unexpected '=' (SyntaxError)
#   upcase! = 'ruby'.upcase!
#           ^

