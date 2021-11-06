# Railsであれば、文字列に対してunderscoreメソッドが呼び出せる
'HelloWorld'.underscore #=> "hello_world"

# ----------------------------------------

# 素のRubyではunderscoreメソッドは定義されていない
'HelloWorld'.underscore
#=> undefined method `underscore' for "HelloWorld":String (NoMethodError)

# ----------------------------------------

# ActiveSupport::HashWithIndifferentAccessクラスを使ってハッシュを作成する
countries = ActiveSupport::HashWithIndifferentAccess.new(japan: 'yen', 'us' => 'dollar')
#=> {"japan"=>"yen", "us"=>"dollar"}

# このクラスを使うと、キーが文字列でもシンボルでも同等に扱われる
countries[:japan]  #=> "yen"
countries['japan'] #=> "yen"
countries[:us]     #=> "dollar"
countries['us']    #=> "dollar"

# ActiveSupport::TimeWithZoneのインスタンスを作成する
time = Time.zone.now #=> Wed, 05 May 2021 19:52:10.269312000 JST +09:00
time.class           #=> ActiveSupport::TimeWithZone

# 異なるタイムゾーンの日時を取得する
time.in_time_zone("Asia/Tokyo") #=> Wed, 05 May 2021 19:52:10.269312000 JST +09:00
time.in_time_zone("US/Hawaii")  #=> Wed, 05 May 2021 00:52:10.269312000 HST -10:00

# ----------------------------------------

class FizzBuzzTest < Minitest::Test
  # 素のMinitestではtest_ではじまるメソッドを定義する
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    # 省略
  end
end

# ----------------------------------------

class FizzBuzzTest < ActiveSupport::TestCase
  # RailsのMinitestではtestメソッドとブロックを使って定義できる
  test 'fizz_buzz' do
    assert_equal '1', fizz_buzz(1)
    # 省略
  end
end
