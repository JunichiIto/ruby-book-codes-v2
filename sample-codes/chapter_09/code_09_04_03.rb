require 'date'

# 令和の日付文字列をDateオブジェクトに変換する
def convert_reiwa_to_date(reiwa_text)
  # 例外処理の対象が無駄に広すぎるので好ましくない
  begin
    m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
    year = m[:jp_year].to_i + 2018
    month = m[:month].to_i
    day = m[:day].to_i
    Date.new(year, month, day)
  rescue
    # 例外が起きたら（＝無効な日付が渡されたら）nilを返したい
    nil
  end
end

# ----------------------------------------

def convert_reiwa_to_date(reiwa_text)
  m = reiwa_text.match(/令和(?<jp_year>\d+)年(?<month>\d+)月(?<day>\d+)日/)
  year = m[:jp_year].to_i + 2018
  month = m[:month].to_i
  day = m[:day].to_i
  # 例外処理の範囲を狭め、捕捉する例外クラスを限定する
  begin
    Date.new(year, month, day)
  rescue ArgumentError
    # 無効な日付であればnilを返す
    nil
  end
end

convert_reiwa_to_date('令和3年12月31日') #=> #<Date: 2021-12-31 ((2459580j,0s,0n),+0s,2299161j)>
convert_reiwa_to_date('令和3年99月99日') #=> nil
