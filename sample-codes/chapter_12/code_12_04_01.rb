def to_hex(r, g, b)
  # 変数（ブロックパラメータ）の中身をターミナルに出力する
  [r, g, b].sum('#') do |n|
    # 変数（ブロック引数）の中身をターミナルに出力する
    puts hex
    hex + n.to_s(16).rjust(2, '0')
  end
end

# ----------------------------------------

def greet(country)
  # greetメソッドが呼ばれたことを確認
  puts 'greet start.'
  return 'countryを入力してください' if country.nil?

  if country == 'japan'
    # 真の分岐に入ったことを確認
    puts 'japan'
    'こんにちは'
  else
    # 偽の分岐に入ったことを確認
    puts 'other'
    'hello'
  end
end

# ----------------------------------------

def calc_fare(ticket)
  from = STATIONS.index(ticket.stamped_at)
  to = STATIONS.index(@name)
  # to - fromの結果をターミナルに出力しつつ、変数distanceに代入する
  distance = p to - from
  FARES[distance - 1]
end
