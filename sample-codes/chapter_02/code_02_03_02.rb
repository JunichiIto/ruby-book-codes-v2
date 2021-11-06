'ruby' == 'ruby' #=> true
'ruby' == 'Ruby' #=> false
'ruby' != 'perl' #=> true
'ruby' != 'ruby' #=> false

# ----------------------------------------

'a' < 'b'      #=> true
'a' < 'A'      #=> false
'a' > 'A'      #=> true
'abc' < 'def'  #=> true
'abc' < 'ab'   #=> false
'abc' < 'abcd' #=> true
'あいうえお' < 'かきくけこ' #=> true

# ----------------------------------------

# bytesメソッドを使うと文字列のバイト値が配列で返る（配列は第4章で詳しく説明します）
'a'.bytes   #=> [97]
'b'.bytes   #=> [98]
'A'.bytes   #=> [65]
'abc'.bytes #=> [97, 98, 99]
'あ'.bytes  #=> [227, 129, 130]
