country = 'italy'

case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'Ciao'
end
#=> "Ciao"

# ----------------------------------------

country = 'italy'

message =
  case country
  in 'japan'
    'こんにちは'
  in 'us'
    'Hello'
  in 'italy'
    'Ciao'
  end

message #=> "Ciao"

# ----------------------------------------

case country
in 'japan' then 'こんにちは'
in 'us' then 'Hello'
in 'italy' then 'Ciao'
end

# ----------------------------------------

country = 'india'

# case文の場合は真になる条件がまったくなくてもエラーにならずnilが返るだけ
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'Ciao'
end
#=> nil

# パターンマッチではいずれの条件にもマッチしない場合は例外が発生する
case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'Ciao'
end
#=> india (NoMatchingPatternError)

# ----------------------------------------

country = 'india'

case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'Ciao'
else
  'Unknown'
end
#=> "Unknown"

# ----------------------------------------

country = 'india'

# 想定外の条件に備えてelse節で意図的に例外をraiseする
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'Ciao'
else
  raise "無効な国名です。#{country}"
end
#=> 無効な国名です。india (RuntimeError)

# パターンマッチでは自動的に例外が発生するのでelse節が不要
case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'Ciao'
end
#=> india (NoMatchingPatternError)

# ----------------------------------------

country = 'india'

case country
in 'japan'
  'こんにちは'
in 'us'
  'Hello'
in 'italy'
  'Ciao'
in obj
  # variableパターンを用いて任意のオブジェクトをマッチさせる（実質的なelse節）
  "Unknown: #{obj}"
end
#=> "Unknown: india"

# ----------------------------------------

value = 'abc'

case value
in Integer
  '整数です'
in String
  # String === 'abc' が真なのでここにマッチ
  '文字列です'
end
#=> "文字列です"
