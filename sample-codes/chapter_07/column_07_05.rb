# コラム：クラスを可視性を変える方法

class Foo
  # このようなクラス定義は無意味
  # （場合によってはエラーにならないこともあるが、クラスの可視性が変わるわけではない）
  private class Bar
    # 省略
  end
end
#=> nil is not a symbol nor a string (TypeError)

# ----------------------------------------

class Foo
  class Bar
    # 省略
  end

  # Barクラスの可視性をprivateにする
  private_constant :Bar
end

# Barクラスはprivateなクラスになったため、Fooクラスの外からは参照できない
Foo::Bar.new
#=> private constant Foo::Bar referenced (NameError)
