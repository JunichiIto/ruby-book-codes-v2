a = { 'x' => 1, 'y' => 2, 'z' => 3 }

# すべてのキーと値が同じであればtrue
b = { 'x' => 1, 'y' => 2, 'z' => 3 }
a == b #=> true

# 並び順が異なっていてもキーと値がすべて同じならtrue
c = { 'z' => 3, 'y' => 2, 'x' => 1 }
a == c #=> true

# キー'x'の値が異なるのでfalse
d = { 'x' => 10, 'y' => 2, 'z' => 3 }
a == d #=> false

# ----------------------------------------

{}.size #=> 0

{ 'x' => 1, 'y' => 2, 'z' => 3 }.size #=> 3

# ----------------------------------------

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
currencies.delete('japan') #=> "yen"
currencies                 #=> {"us"=>"dollar", "india"=>"rupee"}

# ----------------------------------------

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 削除しようとしたキーが見つからないときはnilが返る
currencies.delete('italy') #=> nil

# ブロックを渡すとキーが見つからないときの戻り値を作成できる
currencies.delete('italy') { |key| "Not found: #{key}" } #=> "Not found: italy"
