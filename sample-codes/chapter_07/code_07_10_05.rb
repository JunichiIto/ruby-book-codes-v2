a = 'abc'
b = 'abc'
a.equal?(b) #=> false

c = a
a.equal?(c) #=> true

# ----------------------------------------

1 == 1.0 #=> true

# ----------------------------------------

# eql?メソッドで数値を比較すると、1と1.0は異なる値と判定される
1.eql?(1.0)   #=> false

# eql?メソッドで数値を比較する場合は同じクラス（Integer同士、またはFloat同士）でなければtrueにならない
1.eql?(1)     #=> true
1.0.eql?(1.0) #=> true

# ----------------------------------------

# 文字列（Stringオブジェクト）が返すハッシュ値の例
'JP'.hash #=> 3843974723244553461
'US'.hash #=> -3281068964685178507

# プログラムを再起動しない限り、同じ文字列からは同じハッシュ値が返る
'JP'.hash #=> 3843974723244553461
'US'.hash #=> -3281068964685178507

# ----------------------------------------

class CountryCode
  attr_reader :code

  def initialize(code)
    @code = code
  end
end

# ----------------------------------------

japan = CountryCode.new('JP')
us = CountryCode.new('US')
india = CountryCode.new('IN')

# CountryCodeクラスのインスタンスをキーにしてハッシュを作成する
currencies = { japan => 'yen', us => 'dollar', india => 'rupee' }

# 同じ国コードなら同じキーとしたいが、そのままでは同一インスタンスだけが同じキーと見なされる
key = CountryCode.new('JP')
currencies[key]   #=> nil
currencies[japan] #=> "yen"

# ----------------------------------------

class CountryCode
  # 省略

  def eql?(other)
    # otherがCountryCodeかつ、同じ国コードなら同じキーと見なす
    other.instance_of?(CountryCode) && code.eql?(other.code)
  end

  def hash
    # CountryCodeオブジェクトのハッシュ値として国コードのハッシュ値を返す
    code.hash
  end
end

# ----------------------------------------

# ハッシュを作り直す
currencies = { japan => 'yen', us => 'dollar', india => 'rupee' }

# 同じ国コードなら同じキーと見なされる！
key = CountryCode.new('JP')
currencies[key]   #=> "yen"
currencies[japan] #=> "yen"

# ----------------------------------------

text = '03-1234-5678'

case text
when /^\d{3}-\d{4}$/
  puts '郵便番号です'
when /^\d{4}\/\d{1,2}\/\d{1,2}$/
  puts '日付です'
when /^\d+-\d+-\d+$/
  puts '電話番号です'
end
#=> 電話番号です

# ----------------------------------------

/^\d{3}-\d{4}$/ === text

# ----------------------------------------

/^\d{4}\/\d{1,2}\/\d{1,2}$/ === text

# ----------------------------------------

value = [1, 2, 3]

# 内部的には String === value、Array === value、Hash === valueの結果が評価されている
case value
when String
  puts '文字列です'
when Array
  puts '配列です'
when Hash
  puts 'ハッシュです'
end
#=> 配列です
