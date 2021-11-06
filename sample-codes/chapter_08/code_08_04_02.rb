require 'minitest/autorun'
require_relative '../lib/rainbowable'

class RainbowableTest < Minitest::Test
  def test_rainbow
    # とりあえずモジュールが参照できることを確認する
    assert Rainbowable
  end
end

# ----------------------------------------

module Rainbowable
  def rainbow
    # 実装はあとで
  end
end
