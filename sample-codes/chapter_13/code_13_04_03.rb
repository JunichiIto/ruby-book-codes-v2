require 'yaml'

# YAML形式のテキストデータを用意する
yaml = <<TEXT
alice:
  name: 'Alice'
  email: 'alice@example.com'
  age: 20
TEXT

# YAMLテキストをパースしてハッシュに変換する
users = YAML.load(yaml) #=> {"alice"=>{"name"=>"Alice", "email"=>"alice@example.com", "age"=>20}}

# ハッシュに新しい要素を追加する
users['alice']['gender'] = :female

# ハッシュからYAMLテキストに変換する
puts YAML.dump(users)
#=> ---
#   alice:
#     name: Alice
#     email: alice@example.com
#     age: 20
#     gender: :female
