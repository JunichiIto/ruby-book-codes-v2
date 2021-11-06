# elseを用意しないパターン（良くない例）
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  end
end
# 想定外の国名を渡すとnilが返る
currency_of(:italy) #=> nil

# ----------------------------------------

currency = currency_of(:italy)
# 戻り値が常にStringオブジェクトだと思い込んでしまい、upcaseメソッドを呼びだしてしまった
currency.upcase #=>undefined method `upcase' for nil:NilClass (NoMethodError)

# ----------------------------------------

# elseを:indiaとして扱うパターン（良くない例）
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  else
    'rupee'
  end
end
# 矛盾した値が返ってきてしまう
currency_of(:italy) #=> "rupee"

# ----------------------------------------

# elseに入ったら例外を発生させるパターン（良い例）
def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    raise ArgumentError, "無効な国名です。#{country}"
  end
end
# 例外が発生する
currency_of(:italy) #=> 無効な国名です。italy (ArgumentError)
