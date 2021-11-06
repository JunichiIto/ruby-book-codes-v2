def greet(country)
  # countryがnilならメッセージを返してメソッドを抜ける
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# ----------------------------------------

def calc_with_break
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    # breakで脱出する
    break if n.even?
  end
  target * 10
end
calc_with_break #=> 40

# ----------------------------------------

def calc_with_return
  numbers = [1, 2, 3, 4, 5, 6]
  target = nil
  numbers.shuffle.each do |n|
    target = n
    # returnで脱出する？
    return if n.even?
  end
  target * 10
end
calc_with_return #=> nil

# ----------------------------------------

[1, 2, 3].each do |n|
  puts n
  return
end
#=> 1
#   unexpected return (LocalJumpError)
