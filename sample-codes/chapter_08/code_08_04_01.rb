module Rainbowable
  def rainbow
    # rainbowメソッドの実装
  end
end

# ----------------------------------------

String.include Rainbowable
Array.include Rainbowable

# ----------------------------------------

class String
  include Rainbowable
end
