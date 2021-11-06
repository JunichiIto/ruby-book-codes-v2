h = { us: 'dollar', india: 'rupee' }
# 変数hの要素を**で展開させる
{ japan: 'yen', **h } #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# **を付けない場合は構文エラーになる
{ japan: 'yen', h }
#=> syntax error, unexpected '}', expecting => (SyntaxError)
#   { japan: 'yen', h }
#                     ^

# ----------------------------------------

h = { us: 'dollar', india: 'rupee' }
{ japan: 'yen' }.merge(h) #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

