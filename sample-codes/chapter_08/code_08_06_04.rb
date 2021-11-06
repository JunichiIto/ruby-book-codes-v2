# トップレベルのSecondクラス
class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

module Clock
  # ClockモジュールのSecondクラス
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# ----------------------------------------

module Clock
  class Second
    def initialize(digits)
      @digits = digits
      # トップレベルのSecondクラスをnewしたい
      @baseball_second = Second.new('Clock', 10)
    end
  end
end

# ----------------------------------------

# initializeメソッド内のSecond.newの呼び出しに失敗する
Clock::Second.new(13) #=> wrong number of arguments (given 2, expected 1) (ArgumentError)

# ----------------------------------------

module Clock
  class Second
    def initialize(digits)
      @digits = digits
      # クラス名の前に::を付けるとトップレベルのクラスを指定したことになる
      @baseball_second = ::Second.new('Alice', 13)
    end
  end
end

# ----------------------------------------

# initializeメソッドの中でトップレベルのSecondクラスを参照できたのでエラーにならない
Clock::Second.new(13) #=> #<Clock::Second:0x0000...(以下省略)
