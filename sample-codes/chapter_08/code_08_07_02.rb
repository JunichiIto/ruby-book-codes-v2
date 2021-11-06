module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
  # logメソッドをミックスインとしても、モジュールの特異メソッドとしても使えるようにする
  # （module_functionは対象メソッドの定義よりも下で呼び出すこと）
  module_function :log
end

# モジュールの特異メソッドとしてlogメソッドを呼び出す
Loggable.log('Hello.') #=> [LOG] Hello.

# Loggableモジュールをincludeしたクラスを定義する
class Product
  include Loggable

  def title
    # includeしたLoggableモジュールのlogメソッドを呼び出す
    log 'title is called.'
    'A great movie'
  end
end

# ミックスインとしてlogメソッドを呼び出す
product = Product.new
product.title
#=> [LOG] title is called.
#   "A great movie"

# ----------------------------------------

product = Product.new
# logメソッドはprivateなので外部からは呼び出せない
product.log 'Hello.' #=> private method `log' called for #<Product:0x000...> (NoMethodError)

# ----------------------------------------

module Loggable
  # ここから下のメソッドはすべてモジュール関数
  module_function

  def log(text)
    puts "[LOG] #{text}"
  end
end
