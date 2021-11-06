# 文字列をハッシュのキーにする
currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }
# 文字列を使って値を取り出す
currencies['japan'] #=> "yen"

# シンボルをハッシュのキーにする
currencies = { :japan => 'yen', :us => 'dollar', :india => 'rupee' }
# シンボルを使って値を取り出す（文字列より高速）
currencies[:japan] #=> "yen"

# ----------------------------------------

# タスクの状態を整数値で管理する（処理効率は良いが、可読性が悪い）
status = 2

case status
when 0 # todo
  'これからやります'
when 1 # doing
  '今やってます'
when 2 # done
  'もう終わりました'
end
#=> "もう終わりました"

# ----------------------------------------

# タスクの状態をシンボルで管理する（処理効率も可読性も良い）
status = :done

case status
when :todo
  'これからやります'
when :doing
  '今やってます'
when :done
  'もう終わりました'
end
#=> "もう終わりました"
