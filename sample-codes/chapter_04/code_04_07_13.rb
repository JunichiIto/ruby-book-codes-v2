# 要素が5つで'default'をデフォルト値とする配列を作成する
a = Array.new(5, 'default')
a #=> ["default", "default", "default", "default", "default"]

# 1番目の要素を取得する
str = a[0]
str #=> "default"

# 1番目の要素を大文字に変換する（破壊的変更）
str.upcase!
str #=> "DEFAULT"

# 配列の要素すべてが大文字に変わってしまった！
a #=> ["DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT", "DEFAULT"]

# ----------------------------------------

# ブロックを使って、ブロックの戻り値をデフォルト値とする
# （ブロックパラメータには添え字が渡されるが、ここでは使わないのでブロックパラメータを省略）
a = Array.new(5) { 'default' }
a #=> ["default", "default", "default", "default", "default"]

# 1番目の要素を取得する
str = a[0]
str #=> "default"

# 1番目の要素を大文字に変換する（破壊的変更）
str.upcase!
str #=> "DEFAULT"

# 1番目の要素だけが大文字になり、ほかは変わらない
a #=> ["DEFAULT", "default", "default", "default", "default"]
