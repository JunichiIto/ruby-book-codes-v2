# 1行パターンマッチはマッチの結果をtrue/falseで返す
[1, 2, 3] in [Integer, Integer, Integer]   #=> true
[1, 2, 'x'] in [Integer, Integer, Integer] #=> false

# ----------------------------------------

person = {name: 'Alice', children: ['Bob']}
if person in {name:, children: [_]}
  # :nameと:childrenをキーに持ち、なおかつ:childrenが要素1つの配列であれば以下の処理を実行する
  "Hello, #{name}!"
end
#=> "Hello, Alice!"

# ----------------------------------------

cars = [
  {name: 'The Beatle', engine: '105ps'},
  {name: 'Prius', engine: '98ps', motor: '72ps'},
  {name: 'Tesla', motor: '306ps'}
]
# selectメソッドと1行パターンマッチを使って、キーに:nameと:motorを含むハッシュだけを抽出する
cars.select do |car|
  car in {name:, motor:}
end
#=> [{:name=>"Prius", :engine=>"98ps", :motor=>"72ps"},
#    {:name=>"Tesla", :motor=>"306ps"}]

# ----------------------------------------

[1, 2, 3] in [Integer, Integer, Integer]
#=> warning: One-line pattern matching is experimental, and the behavior may change in future versions of Ruby!

# ----------------------------------------

# Ruby 2.7の場合
[1, 2, 3] in [Integer, Integer, Integer]
#=> nil

['a', 'b', 'c'] in [Integer, Integer, Integer]
#=> NoMatchingPatternError (["a", "b", "c"])

# ----------------------------------------

# =>を使った1行パターンマッチで変数nameとchildにハッシュの値を代入する
{name: 'Alice', children: ['Bob']} => {name:, children: [child]}
name  #=> "Alice"
child #=> "Bob"

# ----------------------------------------

# 構文上はパターンマッチだが、左から右へ代入しているようにも見える（通称 右代入）
123 => n

n * 10 #=> 1230

# ----------------------------------------

words = 'Ruby is fun'
# 右代入を使えば視線やキャレットを右から左へ戻さずに代入先の変数を読み書きできる
words.split(' ').map { |word| word.upcase + '!' * 3 }.join(' ') => loud_voice
loud_voice #=> "RUBY!!! IS!!! FUN!!!"

# ----------------------------------------

123 => n      #=> nil
123 => [n, m] #=> 123 (NoMatchingPatternError)

# ----------------------------------------

# Ruby 2.7では => を使う1行パターンマッチは構文エラーになる
123 => n
#=> SyntaxError (syntax error, unexpected =>, expecting `end')
