module Loggable
  # 省略
end

class Product
  include Loggable
  # 省略
end

# ----------------------------------------

Product.include?(Loggable) #=> true

# ----------------------------------------

Product.included_modules #=> [Loggable, Kernel]

# ----------------------------------------

Product.ancestors #=> [Product, Loggable, Object, Kernel, BasicObject]

# ----------------------------------------

product = Product.new
# product.classはProductクラスを返す
product.class.include?(Loggable) #=> true
product.class.included_modules   #=> [Loggable, Kernel]

# ----------------------------------------

product = Product.new
# 引数が自クラス、スーパークラス、includeしているモジュールのいずれかに該当すればtrue
product.is_a?(Product)  #=> true
product.is_a?(Loggable) #=> true
product.is_a?(Object)   #=> true
