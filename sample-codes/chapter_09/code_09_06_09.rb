class NoCountryError < StandardError
  # 独自の例外クラス名を与えるだけで、機能的にはStandardErrorと同じにするため、実装コードは特に書かない
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # 独自に定義したNoCountryErrorを発生させる
    raise NoCountryError, "無効な国名です。#{country}"
  end
end

currency_of(:italy) #=> 無効な国名です。italy (NoCountryError)

# ----------------------------------------

class NoCountryError < StandardError
  # 国名を属性として取得できるようにする
  attr_reader :country

  def initialize(message, country)
    @country = country
    super("#{message} #{country}")
  end
end

def currency_of(country)
  case country
  when :japan
    'yen'
  when :us
    'dollar'
  when :india
    'rupee'
  else
    # NoCountryErrorを発生させる
    raise NoCountryError.new('無効な国名です。', country)
  end
end

begin
  currency_of(:italy)
rescue NoCountryError => e
  # エラーメッセージと国名を出力する
  puts e.message
  puts e.country
end
#=> 無効な国名です。 italy
#   italy
