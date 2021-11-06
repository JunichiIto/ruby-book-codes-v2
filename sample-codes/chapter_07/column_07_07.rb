# コラム：Rubyでメソッドのオーバーロード？

def add_ten(n)
  # nが整数以外の場合にも対応するためto_iで整数に変換する
  n.to_i + 10
end

# 整数を渡す
add_ten(1)   #=> 11

# 文字列やnilを渡す
add_ten('2') #=> 12
add_ten(nil) #=> 10

# ----------------------------------------

# 引数にデフォルト値を付ける
def add_numbers(a = 0, b = 0)
  a + b
end

# 引数の個数はゼロでも1個でも2個でもよい
add_numbers       #=> 0
add_numbers(1)    #=> 1
add_numbers(1, 2) #=> 3
