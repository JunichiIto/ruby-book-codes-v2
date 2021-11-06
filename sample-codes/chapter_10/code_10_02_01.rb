def greet
  puts 'おはよう'
  puts 'こんばんは'
end

# ----------------------------------------

greet
#=> おはよう
#   こんばんは

# ----------------------------------------

greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんばんは

# ----------------------------------------

def greet
  puts 'おはよう'
  # ここでブロックの処理を呼び出す
  yield
  puts 'こんばんは'
end

# ----------------------------------------

greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは

# ----------------------------------------

def greet
  puts 'おはよう'
  # ブロックを2回呼び出す
  yield
  yield
  puts 'こんばんは'
end

greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんにちは
#   こんばんは

# ----------------------------------------

# わざとブロックを付けずに呼び出す
greet
#=> おはよう
#   no block given (yield) (LocalJumpError)

# ----------------------------------------

def greet
  puts 'おはよう'
  # ブロックの有無を確認してからyieldを呼び出す
  if block_given?
    yield
  end
  puts 'こんばんは'
end

greet
#=> おはよう
#   こんばんは

greet do
  puts 'こんにちは'
end
#=> おはよう
#   こんにちは
#   こんばんは

# ----------------------------------------

def greet
  puts 'おはよう'
  # ブロックに引数を渡し、戻り値を受け取る
  text = yield 'こんにちは'
  # ブロックの戻り値をコンソールに出力する
  puts text
  puts 'こんばんは'
end

greet do |text|
  # yieldで渡された文字列（"こんにちは"）を2回繰り返す
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

def greet
  puts 'おはよう'
  # 2個の引数をブロックに渡す
  text = yield 'こんにちは', 12345
  puts text
  puts 'こんばんは'
end

greet do |text|
  # ブロックパラメータが1つであれば、2つ目の引数は無視される
  text * 2
end
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

def greet
  puts 'おはよう'
  # 1個の引数をブロックに渡す
  text = yield 'こんにちは'
  puts text
  puts 'こんばんは'
end

greet do |text, other|
  # ブロックパラメータが2つであれば、2つ目の引数はnilになる
  text * 2 + other.inspect
end
#=> おはよう
#   こんにちはこんにちはnil
#   こんばんは

