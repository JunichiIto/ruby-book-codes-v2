# optionsは任意のハッシュを受け付ける
def buy_burger(menu, options = {})
  puts options
end

# ----------------------------------------

# ハッシュを第2引数として渡す
buy_burger('fish', {'drink' => true, 'potato' => false}) #=> {"drink"=>true, "potato"=>false}

# ----------------------------------------

# ハッシュリテラルの{}を省略してメソッドを呼び出す
buy_burger('fish', 'drink' => true, 'potato' => false) #=> {"drink"=>true, "potato"=>false}

# ----------------------------------------

# menuとoptionsの順番を入れ替える
def buy_burger(options = {}, menu)
  puts options
end

# optionsは最後の引数ではないので、ハッシュリテラルの{}は省略できない
buy_burger('drink' => true, 'potato' => false, 'fish')
#=> syntax error, unexpected ')', expecting => (SyntaxError)
#   ...rue, 'potato' => false, 'fish')
#   ...                              ^

# 最後の引数でなければ{}を付けてふつうにハッシュを作成する
buy_burger({'drink' => true, 'potato' => false}, 'fish') #=> {"drink"=>true, "potato"=>false}

# ----------------------------------------

a = ['fish', { drink: true, potato: false }]
a[0] #=> "fish"
a[1] #=> {:drink=>true, :potato=>false}

b = ['fish', drink: true, potato: false]
b[0] #=> "fish"
b[1] #=> {:drink=>true, :potato=>false}
