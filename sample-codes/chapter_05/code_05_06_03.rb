# ハッシュを引数として受け取り、疑似キーワード引数を実現する
def buy_burger(menu, options = {})
  drink = options[:drink]
  potato = options[:potato]
  # 省略
end

buy_burger('cheese', drink: true, potato: true)

# ----------------------------------------

# 疑似キーワード引数の場合はどんなキーワードを指定してもエラーにならない
# （無効なキーをエラーにするためにはメソッド側で明示的な実装が必要）
buy_burger('fish', salad: true)
