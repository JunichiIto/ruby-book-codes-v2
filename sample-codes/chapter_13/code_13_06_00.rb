# Ruby 3.0では警告対象だが、そのままでは警告が出ない
lambda(&proc{})

# ----------------------------------------

# -W:deprecatedオプションを付けてrubyコマンドやirbを実行すると警告が出力される
lambda(&proc{})
#=> warning: lambda without a literal block is deprecated; use the proc without lambda instead

# ----------------------------------------

# 非推奨警告を出力するようtrueをセット
Warning[:deprecated] = true

# 非推奨機能を使うと警告が出力される
lambda(&proc{})
#=> warning: lambda without a literal block is deprecated; use the proc without lambda instead
