def buy_burger(options = {}, menu)
  puts options
end

buy_burger({'drink' => true, 'potato' => false}, 'fish')

# ----------------------------------------

# ()ありのメソッド呼び出し
puts('Hello')

# ()なしのメソッド呼び出し
puts 'Hello'

# ----------------------------------------

buy_burger {'drink' => true, 'potato' => false}, 'fish'
#=> syntax error, unexpected '}', expecting end-of-input
#=> ...nk' => true, 'potato' => false}, 'fish'
#=> ...                              ^

# ----------------------------------------

# 第1引数にハッシュの{}が来る場合は()を省略できない
buy_burger({'drink' => true, 'potato' => false}, 'fish')

# ----------------------------------------

def buy_burger(menu, options = {})
  puts options
end

# 第2引数以降にハッシュが来る場合は、()を省略してもエラーにならない
buy_burger 'fish', {'drink' => true, 'potato' => false}

# この場合、そもそもハッシュが最後の引数なので、{}を省略することもできる
buy_burger 'fish', 'drink' => true, 'potato' => false

# ----------------------------------------

# ついうっかり・その1「ハッシュの内容をターミナルに出力したい！→エラー」
puts { foo: 1, bar: 2 }
#=> syntax error, unexpected ':', expecting '}' (SyntaxError)

# ()で囲む必要がある
puts({ foo: 1, bar: 2 })

# ついうっかり・その2「resultの内容が指定したハッシュの内容に一致するか検証したい！→エラー」
assert_equal { foo: 1, bar: 2 }, result
#=> syntax error, unexpected ':', expecting '}' (SyntaxError)

# ()で囲む必要がある
assert_equal({ foo: 1, bar: 2 }, result)
