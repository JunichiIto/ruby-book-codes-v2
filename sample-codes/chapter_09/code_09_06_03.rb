begin
  # 例外が発生するかもしれない処理
rescue
  # 例外が発生した場合の処理
else
  # 例外が発生しなかった場合の処理
ensure
  # 例外の有無にかかわらず実行する処理
end

# ----------------------------------------

# else節を使う場合
begin
  puts 'Hello.'
rescue
  puts '例外が発生しました。'
else
  puts '例外は発生しませんでした。'
end
#=> Hello.
#   例外は発生しませんでした。

# else節を使わない場合
begin
  puts 'Hello.'
  puts '例外は発生しませんでした。'
rescue
  puts '例外が発生しました。'
end
#=> Hello.
#   例外は発生しませんでした。
