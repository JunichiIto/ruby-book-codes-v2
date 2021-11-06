def some_method
  1 / 0
rescue => e
  # full_messageと書くつもりがfull_mesageと書いてしまった
  puts "ERROR! #{e.full_mesage}"
end

# rescue節で別の例外が起きたために、本来出力されるべき"ERROR!"の文字が出力されない
some_method
#=> undefined method `full_mesage' for #<ZeroDivisionError: divided by 0> (NoMethodError)
#   （以下略）
