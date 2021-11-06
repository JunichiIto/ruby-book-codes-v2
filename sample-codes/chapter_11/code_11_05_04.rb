class Point
  def initialize(x, y)
    @x = x
    @y = y
  end

  # arrayパターンで呼ばれるメソッド
  def deconstruct
    [@x, @y]
  end

  # hashパターンで呼ばれるメソッド
  # （引数の_keysの使い道については後述。ここでは未使用）
  def deconstruct_keys(_keys)
    {x: @x, y: @y}
  end

  # 実行結果をわかりやすく表示するためにto_sメソッドもオーバーライドしておく
  def to_s
    "x:#{@x}, y:#{@y}"
  end
end

# ----------------------------------------

point = Point.new(10, 20)

case point
in [1, 2]
  # ここはマッチしない
in [10, 20]
  # ここにマッチする
  'matched'
end
#=> "matched"

case point
in {x: 1, y: 2}
  # ここはマッチしない
in {x: 10, y: 20}
  # ここにマッチする
  'matched'
end
#=> "matched"

# ----------------------------------------

# PointオブジェクトとArrayオブジェクトを混在させた配列を作る
data = [
  Point.new(10, 20),
  [10, 20]
]
data.each do |obj|
  case obj
  in [10, 20]
    # PointもArrayもどちらもマッチする
    puts "obj=#{obj}"
  end
end
#=> obj=x:10, y:20
#   obj=[10, 20]

# ----------------------------------------

data.each do |obj|
  case obj
  in Point(10, 20)
    # Pointオブジェクトかつ、配列表現が[10, 20]ならマッチ
    puts "point=#{obj}"
  in Array(10, 20)
    # Arrayオブジェクトかつ、配列表現が[10, 20]ならマッチ
    puts "array=#{obj}"
  end
end
#=> point=x:10, y:20
#   array=[10, 20]

# ----------------------------------------

point = Point.new(10, 20)

# クラス名(パターン)の形式を使う場合
case point
in Point(x: 10, y: 20)
  'matched'
end
#=> "matched"

# クラス名[パターン]の形式を使う場合
case point
in Point[x: 10, y: 20]
  'matched'
end
#=> "matched"

# ----------------------------------------

# クラス名{パターン}という構文はないので、以下のコードは構文エラーになる
case point
in Point{x: 10, y: 20}
  # ...
end
#=> syntax error, unexpected '{', expecting `then' or ';' or '\n' (SyntaxError)

# ----------------------------------------

class Point
  # 省略

  def deconstruct_keys(keys)
    # 確認用にkeysの内容を表示する
    puts "keys=#{keys.inspect}"
    {x: @x, y: @y}
  end

  # 省略
end

point = Point.new(10, 20)

# hashパターンで参照されるキーの配列がdeconstruct_keysメソッドに渡される
point in {x: 10, y: 20} #=> keys=[:x, :y]
point in {x: 10}        #=> keys=[:x]

# ただし、**restや**nilのようなパターンが指定された場合は、すべての要素を返す必要があるため、
# ほかのキー指定の有無にかかわらずnilが渡される
point in {x: 10, **rest}       #=> keys=nil
point in {x: 10, y: 20, **nil} #=> keys=nil

# ----------------------------------------

def deconstruct_keys(keys)
  # 引数のkeysを参照して、必要最小限の要素を返すコード例
  hash = {}
  hash[:x] = @x if keys.nil? || keys.include?(:x)
  hash[:y] = @y if keys.nil? || keys.include?(:y)
  hash
end

# ----------------------------------------

# キー情報は使わないので引数名をアンダースコア始まりにする
def deconstruct_keys(_keys)
  {x: @x, y: @y}
end
