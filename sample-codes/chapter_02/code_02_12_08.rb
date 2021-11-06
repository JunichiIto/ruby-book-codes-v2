# pメソッドではネストした配列が横並びになってしまい確認しづらい
p Encoding.aliases.take(5)
#=> [["BINARY", "ASCII-8BIT"], ["CP437", "IBM437"], ["CP720", "IBM720"], ["CP737", "IBM737"], ["CP775", "IBM775"]]

# ppメソッドを使うと配列が見やすく整形される
pp Encoding.aliases.take(5)
#=> [["BINARY", "ASCII-8BIT"],
#    ["CP437", "IBM437"],
#    ["CP720", "IBM720"],
#    ["CP737", "IBM737"],
#    ["CP775", "IBM775"]]

# ----------------------------------------

# 文字列をinspectすると、ダブルクオート付きの文字列が返る
'abc'.inspect #=> "\"abc\""
