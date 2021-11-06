class User
  # weightは外部に公開しない
  attr_reader :name

  def initialize(name, weight)
    @name = name
    @weight = weight
  end
end

# ----------------------------------------

class User
  # 省略

  # 自分がother_userより重い場合はtrue
  def heavier_than?(other_user)
    other_user.weight < @weight
  end
end

# ----------------------------------------

alice = User.new('Alice', 50)
bob = User.new('Bob', 60)
# AliceはBobのweightを取得できない
alice.heavier_than?(bob)
#=> undefined method `weight' for #<User:0x000000013c18fa00 ...> (NoMethodError)

# ----------------------------------------

class User
  # 省略

  def heavier_than?(other_user)
    other_user.weight < @weight
  end

  protected

  # 同じクラスかサブクラスであればレシーバ付きで呼び出せる
  def weight
    @weight
  end
end
alice = User.new('Alice', 50)
bob = User.new('Bob', 60)

# 同じクラスのインスタンスメソッド内であればweightが呼び出せる
alice.heavier_than?(bob) #=> false
bob.heavier_than?(alice) #=> true

# クラスの外ではweightは呼び出せない
alice.weight #=> protected method `weight' called for #<User:0x0000000 ...> (NoMethodError)

# ----------------------------------------

class User
  attr_reader :name
  # weightメソッドの定義と同時にprotectedメソッドにする（Ruby 3.0以上なら有効）
  protected attr_reader :weight

  # 省略
end

# ----------------------------------------

class User
  # いったんpublicメソッドとしてweightを定義する
  attr_reader :name, :weight
  # weightのみ、あとからprotectedメソッドに変更する
  protected :weight

  # 省略
end
