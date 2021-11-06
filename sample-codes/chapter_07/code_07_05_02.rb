class Foo
  # 注：このputsはクラス定義の読み込み時に呼び出される
  puts "クラス構文の直下のself: #{self}"

  def self.bar
    puts "クラスメソッド内のself: #{self}"
  end

  def baz
    puts "インスタンスメソッド内のself: #{self}"
  end
end
#=> クラス構文の直下のself: Foo

Foo.bar #=> クラスメソッド内のself: Foo

foo = Foo.new
foo.baz #=> インスタンスメソッド内のself: #<Foo:0x000000012da3e2f0>

# ----------------------------------------

class Foo
  def self.bar
    # クラスメソッドからインスタンスメソッドのbazを呼び出す？
    self.baz
  end

  def baz
    # インスタンスメソッドからクラスメソッドのbarを呼び出す？
    self.bar
  end
end

# selfが異なるためクラスメソッドのbarからはインスタンスメソッドのbazは呼び出せない
Foo.bar #=> undefined method `baz' for Foo:Class (NoMethodError)

# selfが異なるためインスタンスメソッドのbazからはクラスメソッドのbarは呼び出せない
foo = Foo.new
foo.baz #=> undefined method `bar' for #<Foo:0x000000013482ff20> (NoMethodError)

# ----------------------------------------

class Foo
  # この時点ではクラスメソッドbarが定義されていないので呼び出せない
  # （NoMethodErrorが発生する）
  # self.bar

  def self.bar
    puts 'hello'
  end

  # クラス構文の直下でクラスメソッドを呼び出す
  # （クラスメソッドbarが定義された後なので呼び出せる）
  self.bar
end
#=> hello

# ----------------------------------------

class Foo
  # クラス定義が読み込まれたタイミングで"Hello!"を3回出力する
  3.times do
    puts 'Hello!'
  end
end
#=> Hello!
#   Hello!
#   Hello!

