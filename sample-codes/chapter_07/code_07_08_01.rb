class Product
  DEFAULT_PRICE = 0
  # 再代入して定数の値を書き換える
  DEFAULT_PRICE = 1000
end
#=> warning: already initialized constant Product::DEFAULT_PRICE

# 再代入後の値が返る
Product::DEFAULT_PRICE #=> 1000

# クラスの外部からでも再代入が可能
Product::DEFAULT_PRICE = 3000
#=> warning: already initialized constant Product::DEFAULT_PRICE

Product::DEFAULT_PRICE #=> 3000

# ----------------------------------------

# クラスを凍結する
Product.freeze

# freezeすると変更できなくなる
Product::DEFAULT_PRICE = 5000 #=> can't modify frozen #<Class:Product>: Product (FrozenError)

# ----------------------------------------

class Product
  DEFAULT_PRICE = 0
  # freezeすれば再代入を防止できるが、デメリットの方が大きいので普通はしない
  freeze
  DEFAULT_PRICE = 1000 #=> can't modify frozen #<Class:Product>: Product (FrozenError)
end

