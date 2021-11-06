require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    # とりあえずモジュールが参照できることを確認する
    assert Effects
  end
end

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effects'

class WordSynthTest < Minitest::Test
  def test_play
    # とりあえずクラスとモジュールが参照できることを確認する
    assert WordSynth
    assert Effects
  end
end

# ----------------------------------------

module Effects
  def self.reverse
    # 実装はあとで
  end
end

# ----------------------------------------

class WordSynth
  def play(original_words)
    # 実装はあとで
  end
end

