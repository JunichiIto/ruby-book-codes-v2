# カレントディレクトリに"secret.txt"が存在するか？
File.exist?('./secret.txt')

# カレントディレクトリに"secret_folder"が存在するか？
Dir.exist?('./secret_folder')

# ----------------------------------------

# libディレクトリにあるfizz_buzz.rbの行数をターミナルに表示する
File.open('./lib/fizz_buzz.rb', 'r') do |f|
  puts f.readlines.count
end

# libディレクトリにhello_world.txtを作成して文字を書き込む
File.open('./lib/hello_world.txt', 'w') do |f|
  f.puts 'Hello, world!'
end

# ----------------------------------------

require 'fileutils'

# libディレクトリのhello_world.txtをhello_world.rbに移動（リネーム）する
FileUtils.mv('./lib/hello_world.txt', './lib/hello_world.rb')

# ----------------------------------------

require 'pathname'

# カレントディレクトリ配下にあるlibディレクトリを表すオブジェクトを作る
lib = Pathname.new('./lib')

# ファイルか？
lib.file? #=> false

# ディレクトリか？
lib.directory? #=> true

# libディレクトリ配下にあるsample.txtへのパス文字列を作る
# （区切り文字のスラッシュは自動的に付与される）
lib.join('sample.txt').to_s #=> "./lib/sample.txt"
