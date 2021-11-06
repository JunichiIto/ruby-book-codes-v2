class Product
  private

  # これはprivateメソッド
  def name
    'A great movie'
  end
end

class DVD < Product
  def to_s
    # nameはスーパークラスのprivateメソッド
    "name: #{name}"
  end
end

dvd = DVD.new
# 内部でスーパークラスのprivateメソッドを呼んでいるがエラーにはならない
dvd.to_s #=> "name: A great movie"

# ----------------------------------------

class Product
  def to_s
    # nameは常に"A great movie"になる、とは限らない
    "name: #{name}"
  end

  private

  def name
    'A great movie'
  end
end

class DVD < Product
  private

  # スーパークラスのprivateメソッドをオーバーライドする
  def name
    'An awesome film'
  end
end

product = Product.new
# Productクラスのnameメソッドが使われる
product.to_s #=> "name: A great movie"

dvd = DVD.new
# オーバーライドしたDVDクラスのnameメソッドが使われる
dvd.to_s     #=> "name: An awesome film"

# ----------------------------------------

# nameをprivateメソッドとして定義する
class Product
  private

  def name
    'A great movie'
  end
end

# nameをpublicメソッドとしてオーバーライドする
class DVD < Product
  public

  def name
    'An awesome film'
  end
end

# Productクラスのnameメソッドは呼び出せない
product = Product.new
product.name
#=> private method `name' called for #<Product:0x000000013c30a470> (NoMethodError)

# DVDクラスのnameメソッドは呼び出せる
dvd = DVD.new
dvd.name
#=> "An awesome film"
