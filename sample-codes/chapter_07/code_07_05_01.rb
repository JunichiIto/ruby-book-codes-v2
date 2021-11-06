class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def rename_to_bob
    # selfなしでname=メソッドを呼ぶ（？）
    name = 'Bob'
  end

  def rename_to_carol
    # self付きでname=メソッドを呼ぶ
    self.name = 'Carol'
  end

  def rename_to_dave
    # 直接インスタンス変数を書き換える
    @name = 'Dave'
  end
end
user = User.new('Alice')

# Bobにリネーム...できていない！！
user.rename_to_bob
user.name #=> "Alice"

# Carolにリネーム
user.rename_to_carol
user.name #=> "Carol"

# Daveにリネーム
user.rename_to_dave
user.name #=> "Dave"

# ----------------------------------------

def rename_to_bob
  name = 'Bob'
end

# ----------------------------------------

def rename_to_bob
  # メソッド内でセッターメソッドを呼び出す場合はselfを必ず付ける！！
  self.name = 'Bob'
end
