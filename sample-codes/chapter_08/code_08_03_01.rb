class Product
  def title
    log 'title is called.'
    'A great movie'
  end

  private

  def log(text)
    # 本来であれば標準ライブラリのLoggerクラス等を使うべきだが、簡易的にputsで済ませる
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log 'name is called.'
    'Alice'
  end

  private

  # このメソッドの仕様はProductクラスのlogメソッドと全く同じ
  def log(text)
    puts "[LOG] #{text}"
  end
end

product = Product.new
product.title
#=> [LOG] title is called.
#   "A great movie"

user = User.new
user.name
#=> [LOG] name is called.
#   "Alice"

# ----------------------------------------

# ログ出力用のメソッドを提供するモジュール
# 「ログ出力できる（log + able）」という意味でLoggableという名前を付けた
module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  # 上で作ったモジュールをincludeする
  include Loggable

  def title
    # logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called.'
    'A great movie'
  end
end

class User
  # こちらも同じようにincludeする
  include Loggable

  def name
    # Loggableモジュールのメソッドが使える
    log 'name is called.'
    'Alice'
  end
end

product = Product.new
product.title
#=> [LOG] title is called.
#   "A great movie"

user = User.new
user.name
#=> [LOG] name is called.
#   "Alice"

# ----------------------------------------

product.log 'public?' #=> [LOG] public?

# ----------------------------------------

module Loggable
  # logメソッドはprivateメソッドにする
  private

  def log(text)
    puts "[LOG] #{text}"
  end
end

class Product
  include Loggable

  # 省略
end

product = Product.new
# logメソッドはprivateメソッドなので外部から呼び出せない
product.log 'public?'
#=> private method `log' called for #<Product:0x000000013d37a210 ...> (NoMethodError)
