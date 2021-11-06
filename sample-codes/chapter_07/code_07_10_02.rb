class User
  # freezeメソッドの定義を削除する
  undef freeze
end
user = User.new
# freezeメソッドを呼び出すとエラーになる
user.freeze #=> undefined method `freeze' for #<User:0x000000013d2e3f40> (NoMethodError)
