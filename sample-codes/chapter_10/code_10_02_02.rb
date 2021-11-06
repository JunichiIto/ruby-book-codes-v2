# ブロックをメソッドの引数として受け取る
def greet(&block)
  puts 'おはよう'
  # callメソッドを使ってブロックを実行する
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end

greet do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

def greet(&block)
  puts 'おはよう'
  # ブロックが渡されていなければblockはnil
  unless block.nil?
    text = block.call('こんにちは')
    puts text
  end
  puts 'こんばんは'
end

# ブロックなしで呼び出す
greet
#=> おはよう
#   こんばんは

# ブロック付きで呼び出す
greet do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

def greet(&block)
  puts 'おはよう'
  # 引数のblockを使わずにblock_given?やyieldを使っても良い
  if block_given?
    text = yield 'こんにちは'
    puts text
  end
  puts 'こんばんは'
end

# ----------------------------------------

# 日本語版のgreetメソッド
def greet_ja(&block)
  texts = ['おはよう', 'こんにちは', 'こんばんは']
  # ブロックを別のメソッドに引き渡す
  greet_common(texts, &block)
end

# 英語版のgreetメソッド
def greet_en(&block)
  texts = ['good morning', 'hello', 'good evening']
  # ブロックを別のメソッドに引き渡す
  greet_common(texts, &block)
end

# 出力処理用の共通メソッド
def greet_common(texts, &block)
  puts texts[0]
  # ブロックを実行する
  puts block.call(texts[1])
  puts texts[2]
end

# 日本語版のgreetメソッドを呼び出す
greet_ja do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# 英語版のgreetメソッドを呼び出す
greet_en do |text|
  text.upcase
end
#=> good morning
#   HELLO
#   good evening

# ----------------------------------------

# 引数の手前に&を付けると、ブロックと見なされる
greet_common(texts, &block)

# &なしで呼び出すと、普通の引数の1つと見なされる
greet_common(texts, block)
#=> wrong number of arguments (given 2, expected 1) (ArgumentError)

# ----------------------------------------

def greet(&block)
  puts 'おはよう'
  text =
    if block.arity == 1
      # ブロックパラメータが1個の場合
      yield 'こんにちは'
    elsif block.arity == 2
      # ブロックパラメータが2個の場合
      yield 'こんに', 'ちは'
    end
  puts text
  puts 'こんばんは'
end

# 1個のブロックパラメータでメソッドを呼び出す
greet do |text|
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# 2個のブロックパラメータでメソッドを呼び出す
greet do |text_1, text_2|
  text_1 * 2 + text_2 * 2
end
#=> おはよう
#   こんにこんにちはちは
#   こんばんは
