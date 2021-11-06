# 「Alice Rubyさん、20歳」というユーザーのオブジェクトを作成する
alice = User.new('Alice', 'Ruby', 20)
# 「Bob Pythonさん、30歳」というユーザーのオブジェクトを作成する
bob = User.new('Bob', 'Python', 30)

# どちらもfull_nameメソッドを持つが、保持しているデータが異なるので戻り値は異なる
alice.full_name
#-> "Alice Ruby"

bob.full_name
#-> "Bob Python"

# ----------------------------------------

user = User.new('Alice', 'Ruby', 20)
user.first_name

# ----------------------------------------

user = User.new('Alice', 'Ruby', 20)
user.first_name

# ----------------------------------------

class User
  # first_nameの読み書きを許可する
  attr_accessor :first_name
  # 省略
end
user = User.new('Alice', 'Ruby', 20)
user.first_name #=> "Alice"
# first_nameを変更する
user.first_name = 'ありす'
user.first_name #=> "ありす"
