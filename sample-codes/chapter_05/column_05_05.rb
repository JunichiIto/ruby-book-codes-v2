# コラム：よく使われるイディオム(3) !!を使った真偽値の型変換

def user_exists?
  # データベース等からユーザーを探す（なければnil）
  user = find_user
  if user
    # userが見つかったのでtrue
    true
  else
    # userが見つからないのでfalse
    false
  end
end

# ----------------------------------------

def user_exists?
  !!find_user
end

# ----------------------------------------

!!true  #=> true
!!1     #=> true
!!false #=> false
!!nil   #=> false
