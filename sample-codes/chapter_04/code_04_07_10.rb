# []で文字列の配列を作成する
['apple', 'melon', 'orange'] #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する（!で囲む場合）
%w!apple melon orange!       #=> ["apple", "melon", "orange"]

# %wで文字列の配列を作成する（丸カッコで囲む場合）
%w(apple melon orange)       #=> ["apple", "melon", "orange"]

# 空白文字（スペースや改行）が連続した場合もひとつの区切り文字と見なされる
%w(
  apple
  melon
  orange
)
#=> ["apple", "melon", "orange"]

# ----------------------------------------

%w(big\ apple small\ melon orange) #=> ["big apple", "small melon", "orange"]

# ----------------------------------------

prefix = 'This is'
%W(#{prefix}\ an\ apple small\nmelon orange)
#=> ["This is an apple", "small\nmelon", "orange"]
