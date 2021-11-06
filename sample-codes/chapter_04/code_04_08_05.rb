# 番号指定パラメータを使わない場合（ブロックパラメータが1つ）
['1', '20', '300'].map { |s| s.rjust(3, '0') }
#=> ["001", "020", "300"]

# 番号指定パラメータを使う場合
['1', '20', '300'].map { _1.rjust(3, '0') }
#=> ["001", "020", "300"]

# ----------------------------------------

# 番号指定パラメータを使わない場合（ブロックパラメータが2つ）
['japan', 'us', 'italy'].map.with_index { |country, n| [n, country] }
#=> [[0, "japan"], [1, "us"], [2, "italy"]]

# 番号指定パラメータを使う場合
['japan', 'us', 'italy'].map.with_index { [_2, _1] }
#=> [[0, "japan"], [1, "us"], [2, "italy"]]

# ----------------------------------------

dimenstions = [
  [10, 20],
  [30, 40],
  [50, 60],
]
# dimenstions.each { |dimenstion| p dimenstion } と書いたのと同じ
dimenstions.each { p _1 }
#=> [10, 20]
#   [30, 40]
#   [50, 60]

# ----------------------------------------

# dimenstions.each { |length, width| puts "#{length} / #{width}" } と書いたのと同じ
dimenstions.each { puts "#{_1} / #{_2}" }
#=> 10 / 20
#   30 / 40
#   50 / 60

# ----------------------------------------

sum = 0
[[1, 2, 3], [4, 5, 6]].each do
  # 外側のブロックで番号指定パラメータを使う
  _1.each do
    # 内側のブロックでも番号指定パラメータを使おうとするとエラーになる
    sum += _1
  end
end
#=> numbered parameter is already used in (SyntaxError)

# ----------------------------------------

sum = 0
[[1, 2, 3], [4, 5, 6]].each do |values|
  values.each do
    # 内側のブロックでしか番号指定パラメータを使ってないのでOK
    sum += _1
  end
end
sum #=> 21

# ----------------------------------------

# 従来のブロックパラメータ |s| と、番号指定パラメータ _1 が混在すると構文エラー
['1', '20', '300'].map { |s| _1.rjust(3, '0') }
#=> ordinary parameter is defined (SyntaxError)
