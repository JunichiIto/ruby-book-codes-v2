# jsonライブラリをrequireすると配列やハッシュでto_jsonメソッドが使えるようになる
require 'json'

user = { name: 'Alice', email: 'alice@example.com', age: 20 }

# ハッシュをJSON形式の文字列に変換する（Rubyのハッシュに似ているがこれはJSON形式）
user_json = user.to_json
puts user_json #=> {"name":"Alice","email":"alice@example.com","age":20}

# JSON文字列をパースしてハッシュに変換する（デフォルトではキーは文字列になる）
JSON.parse(user_json)
#=> {"name"=>"Alice", "email"=>"alice@example.com", "age"=>20}

# symbolize_namesオプションを指定するとキーがシンボルになる
JSON.parse(user_json, symbolize_names: true)
#=> {:name=>"Alice", :email=>"alice@example.com", :age=>20}
