class User
  def initialize(name)
    # インスタンス作成時に渡された名前をインスタンス変数に保存する
    @name = name
  end

  def hello
    # インスタンス変数に保存されている名前を表示する
    "Hello, I am #{@name}."
  end
end
user = User.new('Alice')
user.hello #=> "Hello, I am Alice."

# ----------------------------------------

class User
  # 省略

  def hello
    # shuffled_nameはローカル変数
    shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = User.new('Alice')
user.hello #=> "Hello, I am cieAl."

# ----------------------------------------

class User
  # 省略

  def hello
    # わざとローカル変数への代入をコメントアウトする
    # shuffled_name = @name.chars.shuffle.join
    "Hello, I am #{shuffled_name}."
  end
end
user = User.new('Alice')
# いきなりshuffled_nameを参照したのでエラーになる
user.hello
#=> undefined local variable or method `shuffled_name' for #<User:0x000000014718d4e8 ...> (NameError)

# ----------------------------------------

class User
  def initialize(name)
    # わざとインスタンス変数への代入をコメントアウトする
    # @name = name
  end

  def hello
    "Hello, I am #{@name}."
  end
end
user = User.new('Alice')
# @nameを参照するとnilになる（つまり名前の部分に何も出ない）
user.hello #=> "Hello, I am ."

# ----------------------------------------

class User
  def initialize(name)
    @name = name
  end

  def hello
    # 間違って@nameを@mameと書いてしまった！（@mameはnilになる）
    "Hello, I am #{@mame}."
  end
end
user = User.new('Alice')
# タイプミスに気づいていないと、名前が出ないことにビックリするはず
user.hello #=> "Hello, I am ."

# ----------------------------------------

class User
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド
  def name
    @name
  end
end
user = User.new('Alice')
# nameメソッドを経由して@nameの内容を取得する
user.name #=> "Alice"

# ----------------------------------------

class User
  def initialize(name)
    @name = name
  end

  # @nameを外部から参照するためのメソッド
  def name
    @name
  end

  # @nameを外部から変更するためのメソッド
  def name=(value)
    @name = value
  end
end
user = User.new('Alice')
# 変数に代入しているように見えるが、実際はname=メソッドを呼びだしている
user.name = 'Bob'
user.name #=> "Bob"

# ----------------------------------------

class User
  # @nameを読み書きするメソッドが自動的に定義される
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  # nameメソッドやname=メソッドを明示的に定義する必要がない
end
user = User.new('Alice')
# @nameを変更する
user.name = 'Bob'
# @nameを参照する
user.name #=> "Bob"

# ----------------------------------------

class User
  # 読み取り用のメソッドだけを定義する
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
user = User.new('Alice')
# @nameの参照はできる
user.name #=> "Alice"

# @nameを変更しようとするとエラーになる
user.name = 'Bob'
#=> undefined method `name=' for #<User:0x0000000158bc7b50 ...> (NoMethodError)

# ----------------------------------------

class User
  # 書き込み用のメソッドだけを定義する
  attr_writer :name

  def initialize(name)
    @name = name
  end
end
user = User.new('Alice')
# @nameは変更できる
user.name = 'Bob'

# @nameの参照はできない
user.name
#=> undefined method `name' for #<User:0x0000000143ad1c60 ...> (NoMethodError)

# ----------------------------------------

class User
  # @nameと@ageへのアクセサメソッドを定義する
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
user = User.new('Alice', 20)
user.name #=> "Alice"
user.age = 30
