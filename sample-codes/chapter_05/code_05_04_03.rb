def buy_burger(menu, drink, potato)
  # ハンバーガーを購入
  if drink
    # ドリンクを購入
  end
  if potato
    # ポテトを購入
  end
end

# チーズバーガーとドリンクとポテトを購入する
buy_burger('cheese', true, true)

# フィッシュバーガーとドリンクを購入する
buy_burger('fish', true, false)

# ----------------------------------------

buy_burger('cheese', true, true)
buy_burger('fish', true, false)

# ----------------------------------------

def buy_burger(menu, drink: true, potato: true)
  # 省略
end

# ----------------------------------------

buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink: true, potato: false)

# ----------------------------------------

# キーワード引数を使わない場合
buy_burger('cheese', true, true)
buy_burger('fish', true, false)

# キーワード引数を使う場合
buy_burger('cheese', drink: true, potato: true)
buy_burger('fish', drink: true, potato: false)

# ----------------------------------------

# drinkはデフォルト値のtrueを使うので指定しない
buy_burger('fish', potato: false)

# drinkもpotatoもデフォルト値のtrueを使うので指定しない
buy_burger('cheese')

# ----------------------------------------

buy_burger('fish', potato: false, drink: true)

# ----------------------------------------

buy_burger('fish', salad: true) #=> unknown keyword: :salad (ArgumentError)

# ----------------------------------------

# デフォルト値なしのキーワード引数を使ってメソッドを定義する
def buy_burger(menu, drink:, potato:)
  # 省略
end

# キーワード引数を指定すれば、デフォルト値ありの場合と同じように使える
buy_burger('cheese', drink: true, potato: true)

# キーワード引数を省略するとエラーになる
buy_burger('fish', potato: false) #=> missing keyword: :drink (ArgumentError)

# ----------------------------------------

params = { drink: true, potato: false }
# **を付けてハッシュをキーワード引数として利用する
buy_burger('fish', **params)
