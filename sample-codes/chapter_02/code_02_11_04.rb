# 通常のメソッド定義
def greet
  'Hello!'
end

# エンドレスメソッド定義（=に続けて処理や戻り値を書く）
def greet = 'Hello!'

# 呼び出し方はどちらも同じ
greet #=> "Hello!"

# ただし、メソッド名と=の間にスペースがないと構文エラー
def greet= 'Hello!'
#=> syntax error, unexpected string literal, expecting ';' or '\n'


# 通常のメソッド定義（引数を持つ場合）
def add(a, b)
  a + b
end

# エンドレスメソッド定義
def add(a, b) = a + b

add(1, 2) #=> 3

# ただし、引数の()を省略すると構文エラー
def add a, b = a + b
#=> circular argument reference - b
#   syntax error, unexpected end-of-input
