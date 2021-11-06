require 'minitest/autorun'
require_relative '../lib/effects'

class EffectsTest < Minitest::Test
  def test_reverse
    effect = Effects.reverse
    assert_equal 'ybuR si !nuf', effect.call('Ruby is fun!')
  end

  def test_echo
    effect = Effects.echo(2)
    assert_equal 'RRuubbyy iiss ffuunn!!', effect.call('Ruby is fun!')

    effect = Effects.echo(3)
    assert_equal 'RRRuuubbbyyy iiisss fffuuunnn!!!', effect.call('Ruby is fun!')
  end

  def test_loud
    effect = Effects.loud(2)
    assert_equal 'RUBY!! IS!! FUN!!!', effect.call('Ruby is fun!')

    effect = Effects.loud(3)
    assert_equal 'RUBY!!! IS!!! FUN!!!!', effect.call('Ruby is fun!')
  end
end
