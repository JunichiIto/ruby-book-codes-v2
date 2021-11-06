class Product
  @@name = 'Product'

  def self.name
    @@name
  end

  def initialize(name)
    @@name = name
  end

  def name
    @@name
  end
end

class DVD < Product
  @@name = 'DVD'

  def self.name
    @@name
  end

  def upcase_name
    @@name.upcase
  end
end

# DVDクラスを定義したタイミングで@@nameが"DVD"に変更される
Product.name #=> "DVD"
DVD.name     #=> "DVD"

product = Product.new('A great movie')
product.name #=> "A great movie"

# Product.newのタイミングで@@nameが"A great movie"に変更される
Product.name #=> "A great movie"
DVD.name     #=> "A great movie"

dvd = DVD.new('An awesome film')
dvd.name        #=> "An awesome film"
dvd.upcase_name #=> "AN AWESOME FILM"

# DVD.newのタイミングで@@nameが"An awesome film"に変更される
product.name #=> "An awesome film"
Product.name #=> "An awesome film"
DVD.name     #=> "An awesome film"

# ----------------------------------------

class Product
  # クラス変数@@nameの定義を削除する
  # @@name = 'Product'

  def self.name
    @@name
  end
end

# 未定義のクラス変数を参照したのでエラーが発生する
Product.name
#=> uninitialized class variable @@name in Product (NameError)
