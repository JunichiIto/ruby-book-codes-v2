currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.to_a #=> [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]

# ----------------------------------------

array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
array.to_h #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}

# ----------------------------------------

array = [1, 2, 3, 4]
array.to_h #=> wrong element type Integer at 0 (expected array) (TypeError)

# ----------------------------------------

array = [[:japan, "yen"], [:japan, "円"]]
array.to_h #=> {:japan=>"円"}

# ----------------------------------------

# 配列の配列をHash[]に渡す
array = [[:japan, "yen"], [:us, "dollar"], [:india, "rupee"]]
Hash[array] #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}


# キーと値が交互に並ぶフラットな配列をsplat展開してもよい
# splat展開については第4章の「1つの配列を複数の引数として展開する」の項を参照
array = [:japan, "yen", :us, "dollar", :india, "rupee"]
Hash[*array] #=> {:japan=>"yen", :us=>"dollar", :india=>"rupee"}
