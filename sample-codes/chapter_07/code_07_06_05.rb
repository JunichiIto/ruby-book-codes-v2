class Product
  attr_reader :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end
product = Product.new('A great movie', 1000)
product.name  #=> "A great movie"
product.price #=> 1000

# ----------------------------------------

class DVD < Product
  # nameとpriceはスーパークラスでattr_readerが設定されているので定義不要
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスにも存在している属性
    @name = name
    @price = price
    # DVDクラス独自の属性
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
dvd.name         #=> "A great movie"
dvd.price        #=> 1000
dvd.running_time #=> 120

# ----------------------------------------

class DVD < Product
  attr_reader :running_time

  def initialize(name, price, running_time)
    # スーパークラスのinitializeメソッドを呼び出す
    super(name, price)
    @running_time = running_time
  end
end
dvd = DVD.new('A great movie', 1000, 120)
dvd.name         #=> "A great movie"
dvd.price        #=> 1000
dvd.running_time #=> 120

# ----------------------------------------

class DVD < Product
  def initialize(name, price)
    # 引数をすべてスーパークラスのメソッドに渡す。つまりsuper(name, price)と書いたのと同じ
    super

    # サブクラスで必要な初期化処理を書く
  end
end
dvd = DVD.new('A great movie', 1000)
dvd.name  #=> "A great movie"
dvd.price #=> 1000

# ----------------------------------------

class DVD < Product
  def initialize(name, price)
    # super()だと引数なしでスーパークラスのメソッドを呼び出す
    # （ただし数が合わないのでこのコードはエラーになる）
    super()
  end
end
# スーパークラスのinitializeメソッドを引数0個で呼び出そうとするのでエラーになる
dvd = DVD.new('A great movie', 1000)
#=> wrong number of arguments (given 0, expected 2) (ArgumentError)

# ----------------------------------------

class DVD < Product
  # サブクラスで特別な処理をしないなら、同名メソッドを定義する必要はない（スーパークラスに処理を任せる）
  # def initialize(name, price)
  #   super
  # end
end
# DVDクラスをnewすると、自動的にスーパークラスのinitializeメソッドが呼び出される
dvd = DVD.new('A great movie', 1000)
dvd.name  #=> "A great movie"
dvd.price #=> 1000
