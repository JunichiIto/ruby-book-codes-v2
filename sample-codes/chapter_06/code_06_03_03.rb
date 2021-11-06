text = '私の誕生日は1977年7月17日です。'
m = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/.match(text)
# シンボルで名前を指定してキャプチャの結果を取得する
m[:year]  #=> "1977"
m[:month] #=> "7"
m[:day]   #=> "17"

# 文字列で指定することもできる
m['year'] #=> "1977"

# 連番で指定することもできる
m[2]      #=> "7"

# ----------------------------------------

text = '私の誕生日は1977年7月17日です。'
# キャプチャの名前がそのままローカル変数に割り当てられる
if /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/ =~ text
  puts "#{year}/#{month}/#{day}"
end
#=> 1977/7/17

# ----------------------------------------

text = '私の誕生日は1977年7月17日です。'
# 正規表現が右辺に来るとローカル変数が作成されない
if text =~ /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
  puts "#{year}/#{month}/#{day}"
end
#=> undefined local variable or method `year' for main:Object (NameError)

# ----------------------------------------

text = '私の誕生日は1977年7月17日です。'
regexp = /(?<year>\d+)年(?<month>\d+)月(?<day>\d+)日/
# 正規表現オブジェクトが変数に入っている場合も無効
if regexp =~ text
  puts "#{year}/#{month}/#{day}"
end
#=> undefined local variable or method `year' for main:Object (NameError)
