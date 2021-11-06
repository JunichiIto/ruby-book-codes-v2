currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# イタリアの通貨を追加する
currencies['italy'] = 'euro'

currencies #=> {"japan"=>"yen", "us"=>"dollar", "india"=>"rupee", "italy"=>"euro"}

# ----------------------------------------

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

# 既存の値を上書きする
currencies['japan'] = '円'

currencies #=> {"japan"=>"円", "us"=>"dollar", "india"=>"rupee"}

# ----------------------------------------

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies['india'] #=> "rupee"

# ----------------------------------------

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies['brazil'] #=> nil
