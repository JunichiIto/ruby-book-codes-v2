# このProductクラスは外部ライブラリで定義されている想定
class Product
  def name
    "A great film"
  end
end

product = Product.new
product.name
#=> "A great film"

# ----------------------------------------

# nameメソッドを拡張して装飾付きの文字列が返るようにしたい
product.name
#=> "<<A great film>>"

# ----------------------------------------

# prependするためのモジュールを定義する
module NameDecorator
  def name
    # prependするとsuperはミックスインした先のクラスのnameメソッドが呼び出される
    "<<#{super}>>"
  end
end

# ----------------------------------------

# 既存の実装を変更するためにProductクラスを再オープンする
class Product
  # includeではなくprependでミックスインする
  prepend NameDecorator
end

# ----------------------------------------

# NameDecoratorをprependしたので、nameメソッドは装飾された文字列が返る
product = Product.new
product.name #=> "<<A great film>>"

# ----------------------------------------

# Productクラスと同じようにnameメソッドを持つクラスがあったとする
class User
  def name
    'Alice'
  end
end

class User
  # prependを使えばUserクラスのnameメソッドも置き換えることができる
  prepend NameDecorator
end

# Userクラスのnameメソッドを上書きすることができた！
user = User.new
user.name #=> "<<Alice>>"

# ----------------------------------------

Product.prepend NameDecorator
User.prepend NameDecorator
