# コラム：引数名が付かない*や**

class DVD < Product
  # 引数の(*)って何？？
  def initialize(*)
    # 省略
  end
end

# ----------------------------------------

class Product
  def initialize(name, price)
    puts "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  # initialize(name, price)としてもいいが、このメソッドでは引数を使わないので
  # 可変長引数としていったん任意の引数を受け取り、それをそのままsuperメソッドに渡す
  def initialize(*)
    super

    # その他の初期化処理
  end
end

DVD.new('A great movie', 1000)
#=> name: A great movie, price: 1000

# ----------------------------------------

class Product
  # superメソッドがキーワード引数を受け取るようにする
  def initialize(name, price: 0)
    puts "name: #{name}, price: #{price}"
  end
end

class DVD < Product
  # Ruby 2.7までは(*)だけでもキーワード引数をsuperメソッドに渡せたが、
  # Ruby 3.0では * とは別に ** でキーワード引数を受け取る必要がある
  def initialize(*, **)
    super

    # その他の初期化処理
  end
end

DVD.new('A great movie', price: 1000)
#=> name: A great movie, price: 1000

# ----------------------------------------

# ...引数を使って通常の引数もキーワード引数もすべて受け取れるようにする
def initialize(...)
  super
end

# ----------------------------------------

# 最初の2つの引数のみ使い、他の引数は無視する
def add(a, b, *)
  a + b
end

add(1, 2, 3, 4, 5)
#=> 3


# name以外のキーワード引数は無視する
def greet(name:, **)
  "Hello, #{name}!"
end

greet(name: 'Alice', friend: 'Bob')
#=> "Hello, Alice!"
