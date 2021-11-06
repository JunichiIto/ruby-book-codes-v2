# すでにBaseballモジュールが定義されている
module Baseball
end

# モジュール名::クラス名の形でクラスを定義できる
class Baseball::Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end
