string = 'apple'
symbol = :apple

string == symbol #=> false
string + symbol  #=> no implicit conversion of Symbol into String (TypeError)

# ----------------------------------------

string = 'apple'
symbol = :apple

string.to_sym           #=> :apple
string.to_sym == symbol #=> true

# ----------------------------------------

string = 'apple'
symbol = :apple

symbol.to_s           #=> "apple"
string == symbol.to_s #=> true
string + symbol.to_s  #=> "appleapple"

# ----------------------------------------

# respond_to?メソッドの引数には文字列とシンボルの両方を渡せる
'apple'.respond_to?('include?') #=> true
'apple'.respond_to?(:include?)  #=> true

'apple'.respond_to?('foo_bar')  #=> false
'apple'.respond_to?(:foo_bar)   #=> false

# ----------------------------------------

# 文字列に'pp'が含まれるか調べる
'apple'.include?('pp') #=> true

# シンボルを引数で渡すとエラーになる
'apple'.include?(:pp)  #=> no implicit conversion of Symbol into String (TypeError)
