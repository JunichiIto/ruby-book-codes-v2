records = [
  [2021],
  [2019, 5],
  [2017, 11, 25],
]

# ----------------------------------------

require 'date'

records.map do |record|
  case record.size
  when 1
    # 年を指定、月と日は1固定
    Date.new(record[0], 1, 1)
  when 2
    # 年月を指定、日は1固定
    Date.new(record[0], record[1], 1)
  when 3
    # 年月日を指定
    Date.new(record[0], record[1], r[2])
  end
end
#=> [#<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((2458083j,0s,0n),+0s,2299161j)>]

# ----------------------------------------

records.map do |record|
  case record
  in [y]
    Date.new(y, 1, 1)
  in [y, m]
    Date.new(y, m, 1)
  in [y, m, d]
    Date.new(y, m, d)
  end
end
#=> [#<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((2458083j,0s,0n),+0s,2299161j)>]

# ----------------------------------------

case record
in [y]

# ----------------------------------------

records.map do |record|
  case record.size
  when 1
    y = record[0]
    Date.new(y, 1, 1)
  when 2
    y = record[0]
    m = record[1]
    Date.new(y, m, 1)
  when 3
    y = record[0]
    m = record[1]
    d = record[2]
    Date.new(y, m, d)
  end
end

# ----------------------------------------

require 'date'

records = [
  [2021],
  [2019, 5],
  [2017, 11, 25],
]
records.map do |record|
  case record
  in [y]
    Date.new(y, 1, 1)
  in [y, m]
    Date.new(y, m, 1)
  in [y, m, d]
    Date.new(y, m, d)
  end
end
#=> [#<Date: 2021-01-01 ((2459216j,0s,0n),+0s,2299161j)>,
#    #<Date: 2019-05-01 ((2458605j,0s,0n),+0s,2299161j)>,
#    #<Date: 2017-11-25 ((2458083j,0s,0n),+0s,2299161j)>]

# ----------------------------------------

# これはcase文（case/when式）
case array
when [1, 2, 3]
  # ...
end

# これはパターンマッチ（case/in式）
case [1, 2, 3]
in a, b, c
  # ...
end
