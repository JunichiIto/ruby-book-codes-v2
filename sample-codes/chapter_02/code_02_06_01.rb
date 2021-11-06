def add(a, b)
  # returnも使えるが、使わない方が主流
  return a + b
end
add(1, 2) #=> 3

# ----------------------------------------

def greet(country)
  # "こんにちは"または"hello"がメソッドの戻り値になる
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greet('japan') #=> "こんにちは"
greet('us')    #=> "hello"

# ----------------------------------------

def greet(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  # （nil?はオブジェクトがnilの場合にtrueを返すメソッド）
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greet(nil)     #=> "countryを入力してください"
greet('japan') #=> "こんにちは"
