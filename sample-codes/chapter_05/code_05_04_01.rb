# ハッシュのキーをシンボルにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# シンボルを使って値を取り出す
currencies[:us] #=> "dollar"

# 新しいキーと値の組み合わせを追加する
currencies[:italy] = 'euro'

# ----------------------------------------

# =>ではなく、"シンボル: 値"の記法でハッシュを作成する
currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
# 値を取り出すときは同じ
currencies[:us] #=> "dollar"

# ----------------------------------------

{ japan: :yen, us: :dollar, india: :rupee }

# ----------------------------------------

{ :japan => :yen, :us => :dollar, :india => :rupee }
