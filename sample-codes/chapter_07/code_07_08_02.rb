class Product
  NAME = 'A product'
  SOME_NAMES = ['Foo', 'Bar', 'Baz']
  SOME_PRICES = { foo: 1000, bar: 2000, baz: 3000 }
end

# 文字列を破壊的に大文字に変更する
Product::NAME.upcase!
Product::NAME       #=> "A PRODUCT"

# 配列に新しい要素を追加する
Product::SOME_NAMES << 'Hoge'
Product::SOME_NAMES #=> ["Foo", "Bar", "Baz", "Hoge"]

# ハッシュに新しいキーと値を追加する
Product::SOME_PRICES[:hoge] = 4000
Product::SOME_PRICES #=> {:foo=>1000, :bar=>2000, :baz=>3000, :hoge=>4000}

# ----------------------------------------

class Product
  SOME_NAMES = ['Foo', 'Bar', 'Baz']

  def self.names_without_foo(names = SOME_NAMES)
    # namesがデフォルト値だと、以下のコードは定数のSOME_NAMESを破壊的に変更していることになる
    names.delete('Foo')
    names
  end
end

Product.names_without_foo #=> ["Bar", "Baz"]

# 定数の中身が変わってしまった！
Product::SOME_NAMES       #=> ["Bar", "Baz"]

# ----------------------------------------

class Product
  # 配列を凍結する
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze

  def self.names_without_foo(names = SOME_NAMES)
    # freezeしている配列に対しては破壊的な変更はできない
    names.delete('Foo')
    names
  end
end

# エラーが発生するので予期せず定数の値が変更される事故が防げる
Product.names_without_foo #=> RuntimeError: can't modify frozen Array

# ----------------------------------------

class Product
  # 配列はfreezeされるが中身の文字列はfreezeされない
  SOME_NAMES = ['Foo', 'Bar', 'Baz'].freeze
end
# 1番目の要素を破壊的に大文字に変更する
Product::SOME_NAMES[0].upcase!
# 1番目の要素の値が変わってしまった！
Product::SOME_NAMES #=> ["FOO", "Bar", "Baz"]

# ----------------------------------------

class Product
  # 中身の文字列もfreezeする
  SOME_NAMES = ['Foo'.freeze, 'Bar'.freeze, 'Baz'.freeze].freeze
end
# 今度は中身もfreezeしているので破壊的な変更はできない
Product::SOME_NAMES[0].upcase! #=> can't modify frozen String: "Foo" (FrozenError)

# ----------------------------------------

# mapメソッドで各要素をfreezeし、最後にmapメソッドの戻り値の配列をfreezeする
SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze

# ----------------------------------------

class Product
  # 数値やシンボル、true/falseはfreeze不要（しても構わないが、意味がない）
  SOME_VALUE = 0
  SOME_TYPE = :foo
  SOME_FLAG = true
end
