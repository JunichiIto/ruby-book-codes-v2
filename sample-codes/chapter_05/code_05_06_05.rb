def buy_burger(menu, drink: true, potato: true)
  # ...
end

# キーワード引数として渡したいハッシュを定義する
params = { drink: true, potato: false }
# ハッシュを引数として渡すと自動的にキーワード引数に変換される（Ruby 2.x）
buy_burger('fish', params)

# ----------------------------------------

# Ruby 3.0ではハッシュはキーワード引数に自動変換されないため、エラーが発生する
buy_burger('fish', params)
#=> `buy_burger': wrong number of arguments (given 2, expected 1) (ArgumentError)

# ----------------------------------------

# 非推奨警告の出力を有効化する
Warning[:deprecated] = true

# Ruby 2.7ではキーワード引数への自動変換が行われると警告が出る
buy_burger('fish', params)
#=> warning: Using the last argument as keyword parameters is deprecated; maybe ** should be added to the call
#   warning: The called method `buy_burger' is defined here

# ----------------------------------------

# **付きでハッシュを渡すと、ハッシュがキーワード引数として扱われるようになる
buy_burger('fish', **params)
