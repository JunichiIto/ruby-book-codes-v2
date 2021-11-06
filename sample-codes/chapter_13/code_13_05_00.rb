# 環境変数MY_NAMEの値を取得する
name = ENV['MY_NAME']

# ----------------------------------------

# 1番目と2番目の起動時引数を取得する
email = ARGV[0]
age = ARGV[1]

# ----------------------------------------

name = ENV['MY_NAME']
email = ARGV[0]
age = ARGV[1]

puts "name: #{name}, email: #{email}, age: #{age}"
