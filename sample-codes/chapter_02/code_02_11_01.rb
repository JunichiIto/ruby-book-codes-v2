def greet(country)
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

# 引数が少ない
greet
#=> wrong number of arguments (given 0, expected 1) (ArgumentError)

# 引数がちょうど
greet('us') #=> "hello"

# 引数が多い
greet('us', 'japan')
#=> wrong number of arguments (given 2, expected 1) (ArgumentError)

# ----------------------------------------

# 引数なしの場合はcountryに'japan'を設定する
def greet(country = 'japan')
  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end

greet       #=> "こんにちは"
greet('us') #=> "hello"

# ----------------------------------------

def default_args(a, b, c = 0, d = 0)
  "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
default_args(1, 2)       #=> "a=1, b=2, c=0, d=0"
default_args(1, 2, 3)    #=> "a=1, b=2, c=3, d=0"
default_args(1, 2, 3, 4) #=> "a=1, b=2, c=3, d=4"

# ----------------------------------------

# システム日時や他のメソッドの戻り値をデフォルト値に指定する
def foo(time = Time.now, message = bar)
  puts "time: #{time}, message: #{message}"
end

def bar
  'BAR'
end

foo #=> time: 2021-05-10 09:16:35 +0900, message: BAR

# ----------------------------------------

# yが指定されなければxの値をyに設定する
def point(x, y = x)
  puts "x=#{x}, y=#{y}"
end

point(3)     #=> x=3, y=3
point(3, 10) #=> x=3, y=10
