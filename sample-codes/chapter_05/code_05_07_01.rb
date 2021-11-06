:apple
:Apple
:ruby_is_fun
:okay?
:welcome!
:_secret
:$dollar
:@at_mark
:+
:==

# ----------------------------------------

# 以下のようにシンボルを作ろうとするとエラーになる
:12345       #=> SyntaxError
:ruby-is-fun #=> NameError
:ruby is fun #=> SyntaxError
:()          #=> SyntaxError

# ----------------------------------------

# シングルクオートで囲むとシンボルとして有効
:'12345'       #=> :"12345"
:'ruby-is-fun' #=> :"ruby-is-fun"
:'ruby is fun' #=> :"ruby is fun"
:'()'          #=> :"()"

# ----------------------------------------

name = 'Alice'
:"#{name.upcase}" #=> :ALICE

# ----------------------------------------

# "文字列: 値"の形式で書くと、キーがシンボルになる
hash = { 'abc': 123 } #=> {:abc=>123}
