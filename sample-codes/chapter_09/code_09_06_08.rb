def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
rescue => e
  # 発生した例外をログやメールに残す（ここはputsで代用)
  puts "[LOG] エラーが発生しました: #{e.class} #{e.message}"
  # 捕捉した例外を再度発生させ、プログラム自体は異常終了させる
  raise
end

fizz_buzz(nil)
#=> [LOG] エラーが発生しました: NoMethodError undefined method `%' for nil:NilClass
#   undefined method `%' for nil:NilClass (NoMethodError)
