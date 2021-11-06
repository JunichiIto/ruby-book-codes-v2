class Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

# ----------------------------------------

class Second
  def initialize(digits)
    @digits = digits
  end
end

# ----------------------------------------

# 二塁手のAliceを作成したい（が、区別できない）
Second.new('Alice', 13)

# 時計の13秒を作成したい（が、区別できない）
Second.new(13)

# ----------------------------------------

module Baseball
  # これはBaseballモジュールに属するSecondクラス
  class Second
    def initialize(player, uniform_number)
      @player = player
      @uniform_number = uniform_number
    end
  end
end

module Clock
  # これはClockモジュールに属するSecondクラス
  class Second
    def initialize(digits)
      @digits = digits
    end
  end
end

# ----------------------------------------

# 二塁手のAliceを作成する（ちゃんと区別できる）
Baseball::Second.new('Alice', 13)

# 時計の13秒を作成する（ちゃんと区別できる）
Clock::Second.new(13)
