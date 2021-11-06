country = 'italy'

# if文を使う場合
if country == 'japan'
  'こんにちは'
elsif country == 'us'
  'Hello'
elsif country == 'italy'
  'Ciao'
else
  '???'
end
#=> "Ciao"

# case文を使う場合
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'Ciao'
else
  '???'
end
#=> "Ciao"

# ----------------------------------------

<<JavaScript
const country = 'us'

// JavaScriptのswitch文。breakを書き忘れると、その次のcase節の処理も実行されてしまう（フォールスルー）
switch (country) {
  case 'japan':
    console.log('こんにちは')
    break
  case 'us':
    console.log('Hello')
    // フォールスルーさせるため、わざとコメントアウト
    // break
  case 'italy':
    console.log('Ciao')
    break
  default:
    console.log('???')
}
//=> Hello
//   Ciao
JavaScript

# ----------------------------------------

country = 'us'

# Rubyのcase文は勝手にその次のwhen節の処理が実行されたりすることはない
case country
when 'japan'
  'こんにちは'
when 'us'
  'Hello'
when 'italy'
  'Ciao'
else
  '???'
end
#=> "Hello"

# ----------------------------------------

# whenに複数の値を指定する
country = 'アメリカ'
case country
when 'japan', '日本'
  'こんにちは'
when 'us', 'アメリカ'
  'Hello'
when 'italy', 'イタリア'
  'Ciao'
else
  '???'
end
#=> "Hello"

# ----------------------------------------

country = 'italy'

# case節の式を省略し、when節の条件式を順に評価するcase文
case
when country == 'japan'
  'こんにちは'
when country == 'us'
  'Hello'
when country == 'italy'
  'Ciao'
else
  '???'
end
#=> "Ciao"

# ----------------------------------------

country = 'italy'

message =
  case country
  when 'japan'
    'こんにちは'
  when 'us'
    'Hello'
  when 'italy'
    'Ciao'
  else
    '???'
  end

message #=> "Ciao"

# ----------------------------------------

country = 'italy'

case country
when 'japan' then 'こんにちは'
when 'us' then 'Hello'
when 'italy' then 'Ciao'
else '???'
end
#=> "Ciao"

# ----------------------------------------

# パターンマッチのコード例。case文によく似ているがwhenではなくinを使っている点に注目。詳しくは第11章を参照
case [0, 1, 2]
in [n, 1, 2]
  "n=#{n}"
else
  'not matched'
end
