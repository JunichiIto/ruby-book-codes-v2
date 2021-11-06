class Product
  # デフォルトの価格を定数として宣言する
  DEFAULT_PRICE = 0

  attr_reader :name, :price

  # 第2引数priceのデフォルト値を定数DEFAULT_PRICE（つまり0）とする
  def initialize(name, price = DEFAULT_PRICE)
    @name = name
    @price = price
  end
end

product = Product.new('A free movie')
product.price #=> 0

# ----------------------------------------

# 定数名の例
DEFAULT_PRICE = 0
UNITS = { m: 1.0, ft: 3.28, in: 39.37 }

# ----------------------------------------

class Product
  DEFAULT_PRICE = 0

  def self.default_price
    # クラスメソッドから定数を参照する
    DEFAULT_PRICE
  end

  def default_price
    # インスタンスメソッドから定数を参照する
    DEFAULT_PRICE
  end
end

Product.default_price #=> 0

product = Product.new
product.default_price #=> 0
