class EffectsTest < Minitest::Test
  # 省略

  def test_loud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')

    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
  end
end

# ----------------------------------------

module Effects
  # 省略

  def self.loud(level)
    ->(words) do
      # スペースで分割 > 大文字変換と"!"の付与 > スペースで連結
      words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
    end
  end
end
