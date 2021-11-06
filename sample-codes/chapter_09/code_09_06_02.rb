# ブロック付きでオープンすると、メソッドの実行後に自動的にクローズされる
File.open('some.txt', 'w') do |file|
  file << 'Hello'
end

# ----------------------------------------

File.open('some.txt', 'w') do |file|
  file << 'Hello'
  # わざと例外を発生させる
  1 / 0
end
# 例外は発生するものの、openメソッドによってクローズ処理自体は必ず行われる
#=> divided by 0 (ZeroDivisionError)
