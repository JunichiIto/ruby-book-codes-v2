class Product
  DEFAULT_PRICE = 0
end

Product::DEFAULT_PRICE #=> 0

# ----------------------------------------

class Product
  DEFAULT_PRICE = 0
  # 定数をprivateにする
  private_constant :DEFAULT_PRICE
end

# privateなのでクラスの外部からは参照できない
Product::DEFAULT_PRICE #=> private constant Product::DEFAULT_PRICE referenced (NameError)

# ----------------------------------------

<<JavaScript
// JavaScriptの場合
function foo() {
  // 関数内で定数barを定義する
  const bar = 123;

  return bar * 10;
}
JavaScript

# ----------------------------------------

def foo
  # メソッドの内部で定数を定義しようとすると構文エラーになる
  BAR = 123

  BAR * 10
end
#=> dynamic constant assignment (SyntaxError)
#     BAR = 123
#     ^~~

# ----------------------------------------

# トップレベルで定義する定数
SOME_VALUE = 123

class Product
  # クラス構文の直下で定義する定数
  DEFAULT_PRICE = 0
end

# ----------------------------------------

# 定数定義はそれ自体が値を返している（ここでは0が返る）
GREEN = 0
#=> 0

# ----------------------------------------

class TrafficLight
  # 配列COLORSを定数として定義し、その各要素も定数として同時に定義する
  COLORS = [
    GREEN = 0,
    YELLOW = 1,
    RED = 2
  ]
end

TrafficLight::GREEN  #=> 0
TrafficLight::YELLOW #=> 1
TrafficLight::RED    #=> 2
TrafficLight::COLORS #=> [0, 1, 2]

# ----------------------------------------

# mapメソッドの戻り値を定数に代入する
NUMBERS = [1, 2, 3].map { |n| n * 10 }
NUMBERS #=> [10, 20, 30]

# 三項演算子を使った条件分岐の結果を定数に代入する（windows?は実行環境のOSを判定する架空のメソッド）
NEW_LINE = windows? ? "\r\n" : "\n"
