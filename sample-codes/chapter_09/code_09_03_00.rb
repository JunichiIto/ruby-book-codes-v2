def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # 意図的に例外を発生させる
    raise "無効な国名です。#{country}"
  end
end

currency_of(:japan) #=> "yen"
currency_of(:italy) #=> 無効な国名です。italy (RuntimeError)

# ----------------------------------------

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # エラーメッセージなしで例外を発生させる（あまり良くない）
    raise
  end
end

currency_of(:italy) #=> unhandled exception

# ----------------------------------------

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # RuntimeErrorではなく、ArgumentErrorを発生させる
    raise ArgumentError, "無効な国名です。#{country}"
  end
end

currency_of(:italy) #=> 無効な国名です。italy (ArgumentError)

# ----------------------------------------

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # raiseメソッドに例外クラスのインスタンスを渡す
    raise ArgumentError.new("無効な国名です。#{country}")
  end
end

currency_of(:italy) #=> 無効な国名です。italy (ArgumentError)

# ----------------------------------------

# エラーメッセージを省略して例外を発生させる（あまり良くない）
raise ArgumentError     #=> ArgumentError (ArgumentError)
raise ArgumentError.new #=> ArgumentError (ArgumentError)
