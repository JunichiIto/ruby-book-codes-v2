# コラム：メソッドチェーンを使ってコードを書く

def self.loud(level)
  ->(words) do
    words.split(' ').map { |word| word.upcase + '!' * level }.join(' ')
  end
end

# ----------------------------------------

def self.loud(level)
  ->(words) do
    words
      .split(' ')
      .map { |word| word.upcase + '!' * level }
      .join(' ')
  end
end

# ----------------------------------------

def self.loud(level)
  ->(words) do
    # 行末にドットを付けて改行するメソッドチェーンの例
    words.
      split(' ').
      map { |word| word.upcase + '!' * level }.
      join(' ')
  end
end

# ----------------------------------------

def self.loud(level)
  ->(words) do
    # Ruby 2.7からはメソッドチェーンの行間にコメントが挟める
    words
      # 半角スペースで文字列を分割する
      .split(' ')
      # 各文字列を大文字にして"!"を指定された回数分付与する
      .map { |word| word.upcase + '!' * level }
      # 半角スペースで各文字列を連結する
      .join(' ')
  end
end
