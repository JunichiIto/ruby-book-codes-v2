:apple.class  #=> Symbol
'apple'.class #=> String

# ----------------------------------------

# 文字列よりもシンボルの方が高速に比較できる
'apple' == 'apple'
:apple  == :apple

# ----------------------------------------

:apple.object_id #=> 1143388
:apple.object_id #=> 1143388
:apple.object_id #=> 1143388

'apple'.object_id #=> 70223819213380
'apple'.object_id #=> 70223819233120
'apple'.object_id #=> 70223819227780

# ----------------------------------------

# 文字列は破壊的な変更が可能
string = 'apple'
string.upcase!
string #=> "APPLE"

# シンボルはイミュータブルなので、破壊的な変更は不可能
symbol = :apple
symbol.upcase! #=> undefined method `upcase!' for :apple:Symbol (NoMethodError)
