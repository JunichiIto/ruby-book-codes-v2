# 例外が発生しない場合
1 / 1 rescue 0 #=> 1

# 例外が発生する場合
1 / 0 rescue 0 #=> 0

# ----------------------------------------

require 'date'

def to_date(string)
  begin
    # 文字列のパースを試みる
    Date.parse(string)
  rescue ArgumentError
    # パースできない場合はnilを返す
    nil
  end
end

# パース可能な文字列を渡す
to_date('2021-01-01') #=> #<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>

# パース不可能な文字列を渡す
to_date('abcdef')     #=> nil

# ----------------------------------------

def to_date(string)
  Date.parse(string) rescue nil
end

to_date('2021-01-01') #=> #<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>
to_date('abcdef')     #=> nil
