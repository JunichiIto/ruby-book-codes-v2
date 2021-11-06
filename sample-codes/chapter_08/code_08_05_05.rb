# ここはどこ？私は誰？

class User
  # Userクラスの定義
end

# ----------------------------------------

# ここはトップレベル
p self         #=> main
p self.class   #=> Object

class User
  # ここはクラスの内部
  p self       #=> User
  p self.class #=> Class
end
