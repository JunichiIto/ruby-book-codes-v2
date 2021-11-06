def buy_burger(menu, drink: true, potato: true)
  # なんで if :drink じゃないの？
  if drink
    # 省略
  end
  # なんで if :potato じゃないの？
  if potato
    # 省略
  end
end

# ----------------------------------------

def buy_burger(menu, drink: true, potato: true)
  # キーワード引数もメソッドの引数のひとつなので、menuと同様にdrinkと書く
  if drink
    # 省略
  end
  # ...

# ----------------------------------------

def buy_burger(menu, drink: true, potato: true)
  # :drinkと書いた場合はメソッドの引数ではなく、ただのシンボルになる
  if :drink
    # 省略
  end
  # ...

# ----------------------------------------

# buy_burgerメソッドを呼び出す場合の drink: や potato: はシンボルか否か？
buy_burger('cheese', drink: true, potato: true)

# ----------------------------------------

# 呼び出す側はどっちの記法でも呼び出せる（ただし通常は上の書き方を使う）
buy_burger('cheese', drink: true, potato: true)
buy_burger('cheese', :drink => true, :potato => true)

# ----------------------------------------

# 変数経由で呼び出すこともできる
# 注意：この例はあくまで実験目的であって、実際にこんなコードを書くことはない
key_1 = :drink
key_2 = :potato
buy_burger('cheese', key_1 => true, key_2 => true)
