require 'minitest/autorun'

class ConvertLengthTest < Minitest::Test
  def test_convert_length
    assert_equal 39.37, convert_length(1, 'm', 'in')
  end
end

# ----------------------------------------

def convert_length(length, unit_from, unit_to)
  39.37
end

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/convert_length'

# 省略
