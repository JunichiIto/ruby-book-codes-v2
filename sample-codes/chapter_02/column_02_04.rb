# コラム：== true や == false は冗長なので書かない

s = ''

# （empty?は文字列が空文字列だったときにtrueを返し、それ以外はfalseを返すメソッド）
# こうではなく...
if s.empty? == true
  '空文字列です'
end

# こう書く
if s.empty?
  '空文字列です'
end

# ----------------------------------------

n = 123

# （zero?は数値が0だったときにtrueを返し、それ以外はfalseを返すメソッド）
# こうではなく......
if n.zero? == false
  'ゼロではありません'
end

# こう書く（unless n.zero?でも可）
if !n.zero?
  'ゼロではありません'
end

# ----------------------------------------

user = nil

# こうではなく......
if user == nil
  'nilです'
end

# こう書く（unless userでも可）
if !user
  'nilです'
end

# またはnil?メソッドを使う
if user.nil?
  'nilです'
end

# ----------------------------------------

some_value = true

# 1や'OK'ではなく、trueであるかどうかを判定したい
if some_value == true
  'trueそのものです'
end
