# コラム：数値と文字列は暗黙的に変換されない

# 数値と文字列を+演算子で加算することはできない
1 + '10' #=> String can't be coerced into Integer (TypeError)

# 文字列は数値に変換する必要がある
# 整数に変換
1 + '10'.to_i #=> 11

# 小数に変換
1 + '10.5'.to_f #=> 11.5

# ----------------------------------------

number = 3

# 文字列に数値を+演算子で連結することはできない
'Number is ' + number #=> no implicit conversion of Integer into String (TypeError)

# 数値を文字列に変換する必要がある
'Number is ' + number.to_s #=> "Number is 3"

# ----------------------------------------

number = 3
"Number is #{number}" #=> "Number is 3"
