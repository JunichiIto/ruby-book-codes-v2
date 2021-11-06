def to_ints(hex)
  r, g, b = hex[1..2], hex[3..4], hex[5..6]
  [r, g, b].map do |s|
    s.hex
  end
end

# ----------------------------------------

def to_ints(hex)
  r, g, b = hex.scan(/\w\w/)
  [r, g, b].map do |s|
    s.hex
  end
end

# ----------------------------------------

'#12abcd'.scan(/\w\w/) #=> ["12", "ab", "cd"]

# ----------------------------------------

def to_ints(hex)
  hex.scan(/\w\w/).map do |s|
    s.hex
  end
end

# ----------------------------------------

def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end

# ----------------------------------------

# リファクタリング前
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

# リファクタリング後
def to_ints(hex)
  hex.scan(/\w\w/).map(&:hex)
end

# ----------------------------------------

# Ruby 3.0であればこんな書き方も可能
def to_ints(hex) = hex.scan(/\w\w/).map(&:hex)
