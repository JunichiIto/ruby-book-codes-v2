module A
  def to_s
    "<A> #{super}"
  end
end

module B
  def to_s
    "<B> #{super}"
  end
end

class Product
  def to_s
    "<Product> #{super}"
  end
end

class DVD < Product
  include A
  include B

  def to_s
    "<DVD> #{super}"
  end
end

# ----------------------------------------

dvd = DVD.new
dvd.to_s #=> "<DVD> <B> <A> <Product> #<DVD:0x000000012e1b6708>"

# ----------------------------------------

DVD.ancestors #=> [DVD, B, A, Product, Object, Kernel, BasicObject]

# ----------------------------------------

# fooメソッドはBasicObjectクラスまで探索しても見つからないのでエラー
dvd.foo #=> NoMethodError: undefined method `foo' for #<DVD:0x000000012e1b6708>
