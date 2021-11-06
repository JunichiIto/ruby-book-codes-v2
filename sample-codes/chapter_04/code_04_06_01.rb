require 'minitest/autorun'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
  end
end

# ----------------------------------------

def to_hex(r, g, b)
  '#000000'
end

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
  end
end

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
  end
end

# ----------------------------------------

0.to_s(16)   #=> "0"
255.to_s(16) #=> "ff"

# ----------------------------------------

'0'.rjust(5)      #=> "    0"
'0'.rjust(5, '0') #=> "00000"
'0'.rjust(5, '_') #=> "____0"

# ----------------------------------------

0.to_s(16).rjust(2, '0')   #=> "00"
255.to_s(16).rjust(2, '0') #=> "ff"

# ----------------------------------------

def to_hex(r, g, b)
  '#' +
    r.to_s(16).rjust(2, '0') +
    g.to_s(16).rjust(2, '0') +
    b.to_s(16).rjust(2, '0')
end

# ----------------------------------------

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end
end
