to_ints('#000000') #=> [0, 0, 0]
to_ints('#ffffff') #=> [255, 255, 255]
to_ints('#043c78') #=> [4, 60, 120]

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  def test_to_hex
    assert_equal '#000000', to_hex(0, 0, 0)
    assert_equal '#ffffff', to_hex(255, 255, 255)
    assert_equal '#043c78', to_hex(4, 60, 120)
  end

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
  end
end

# ----------------------------------------

# NOTE: 記述ミスがあったためコードを一部修正
# https://gihyo.jp/book/2021/978-4-297-12437-3/support
def to_hex(r, g, b)
  [r, g, b].sum('#') do |n|
    n.to_s(16).rjust(2, '0')
  end
end

def to_ints(hex)
  [0, 0, 0]
end

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/rgb'

class RgbTest < Minitest::Test
  # 省略

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#ffffff')
  end
end

# ----------------------------------------

s = 'abcde'
s[1..3] #=> "bcd"

# ----------------------------------------

hex = '#12abcd'
r = hex[1..2] #=> "12"
g = hex[3..4] #=> "ab"
b = hex[5..6] #=> "cd"

# ----------------------------------------

'00'.hex #=> 0
'ff'.hex #=> 255
'2a'.hex #=> 42

# ----------------------------------------

def to_ints(hex)
  r = hex[1..2]
  g = hex[3..4]
  b = hex[5..6]
  ints = []
  [r, g, b].each do |s|
    ints << s.hex
  end
  ints
end

# ----------------------------------------

class RgbTest < Minitest::Test
  # 省略

  def test_to_ints
    assert_equal [0, 0, 0], to_ints('#000000')
    assert_equal [255, 255, 255], to_ints('#ffffff')
    assert_equal [4, 60, 120], to_ints('#043c78')
  end
end
