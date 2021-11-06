class User
  # いったんpublicメソッドとして定義する
  def foo
    'foo'
  end

  def bar
    'bar'
  end

  # fooとbarをprivateメソッドに変更する
  private :foo, :bar

  # bazはpublicメソッド
  def baz
    'baz'
  end
end

user = User.new
user.foo #=> private method `foo' called for #<User:0x000000012a016190> (NoMethodError)
user.bar #=> private method `bar' called for #<User:0x000000012a016190> (NoMethodError)
user.baz #=> "baz"
# ----------------------------------------

# 実はメソッド定義も値を返している
def foo
  'foo'
end
#=> :foo

# ----------------------------------------

class User
  # メソッド定義の戻り値 :foo をprivateキーワード（実際はメソッド）の引数とする
  # 結果としてfooはprivateメソッドになる
  private def foo
    'foo'
  end
end

user = User.new
user.foo #=> private method `foo' called for #<User:0x000000013c144398> (NoMethodError)

# ----------------------------------------

class User
  attr_accessor :name

  # ゲッターメソッドとセッターメソッドをそれぞれprivateメソッドにする
  private :name, :name=

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
user.name         #=> private method `name' called for #<User:0x000 ...> (NoMethodError)
user.name = 'Bob' #=> private method `name=' called for #<User:0x000 ...> (NoMethodError)

# ----------------------------------------

class User
  # Ruby 3.0は1行でprivateなアクセサメソッドを定義できる
  private attr_accessor :name

  def initialize(name)
    @name = name
  end
end

user = User.new('Alice')
user.name         #=> private method `name' called for #<User:0x000 ...> (NoMethodError)
user.name = 'Bob' #=> private method `name=' called for #<User:0x000 ...> (NoMethodError)
