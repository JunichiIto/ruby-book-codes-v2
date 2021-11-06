# 不等号を使う場合
def liquid?(temperature)
  # 0度以上100度未満であれば液体、と判定したい
  0 <= temperature && temperature < 100
end
liquid?(-1)  #=> false
liquid?(0)   #=> true
liquid?(99)  #=> true
liquid?(100) #=> false

# 範囲オブジェクトを使う場合
def liquid?(temperature)
  (0...100).include?(temperature)
end
liquid?(-1)  #=> false
liquid?(0)   #=> true
liquid?(99)  #=> true
liquid?(100) #=> false
