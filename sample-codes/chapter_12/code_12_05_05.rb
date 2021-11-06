# underscoreメソッドは文字列をスネークケースに変換するメソッド
'OrderItem'.underscore #=> "order_item"

# このメソッドが定義されているのはactivesupport gemのinflections.rbの143行目
'OrderItem'.method(:underscore).source_location
#=> ["/（gemがインストールされているパス）/activesupport-6.1.3.1/lib/active_support/core_ext/string/inflections.rb", 143]

# ----------------------------------------

# upcaseメソッドは組み込みライブラリのメソッド
'HelloWorld'.method(:upcase).source_location #=> nil
