class WordSynthTest < Minitest::Test
  def test_play_without_effects
    synth = WordSynth.new
    assert_equal 'Ruby is fun!', synth.play('Ruby is fun!')
  end
end

# ----------------------------------------

class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    words = original_words
    @effects.each do |effect|
      words = effect.call(words)
    end
    words
  end
end

# ----------------------------------------

class WordSynthTest < Minitest::Test
  # 省略

  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end
end

# ----------------------------------------

class WordSynthTest < Minitest::Test
  # 省略

  def test_play_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
  end
end

# ----------------------------------------

class WordSynthTest < Minitest::Test
  # 省略

  def test_play_with_many_effects
    synth = WordSynth.new
    synth.add_effect(Effects.echo(2))
    synth.add_effect(Effects.loud(3))
    # あえてエフェクトを1つ外してみる
    # synth.add_effect(Effects.reverse)
    assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
  end
end
