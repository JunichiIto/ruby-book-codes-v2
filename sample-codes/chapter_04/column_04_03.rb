# コラム：繰り返し処理とEnummerableモジュール

# 範囲オブジェクトに対してmapメソッドを呼びだす
(1..4).map { |n| n * 10 } #=> [10, 20, 30, 40]

# uptoメソッドの戻り値に対してselectメソッドを呼び出す
1.upto(5).select { |n| n.odd? } #=> [1, 3, 5]

# ----------------------------------------

[1, 2, 3].class                 #=> Array
Array.include?(Enumerable)      #=> true

(1..3).class                    #=> Range
Range.include?(Enumerable)      #=> true

1.upto(3).class                 #=> Enumerator
Enumerator.include?(Enumerable) #=> true
