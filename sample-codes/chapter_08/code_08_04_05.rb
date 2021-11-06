def setup
  # StringクラスやArrayクラスではなく、ObjectクラスにRainbowableモジュールをincludeする
  Object.include Rainbowable
end

# ----------------------------------------

def test_rainbow
  # 省略

  # ハッシュや範囲オブジェクトなど、任意のオブジェクトに対してrainbowメソッドを呼びだしてみる
  puts({foo: 123, bar: 456}.rainbow)
  puts (10..20).rainbow
  puts true.rainbow
  puts false.rainbow
end
