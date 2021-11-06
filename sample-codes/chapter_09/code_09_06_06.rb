# rescue節で例外情報を変数に格納する
begin
  1 / 0
rescue => e
  puts "#{e.class} #{e.message}"
  puts e.backtrace
end
#=> ZeroDivisionError divided by 0
#   （バックトレースは省略）

# 組み込み変数に格納された例外情報を使う
begin
  1 / 0
rescue
  puts "#{$!.class} #{$!.message}"
  puts $@
end
#=> ZeroDivisionError divided by 0
#   （バックトレースは省略）
