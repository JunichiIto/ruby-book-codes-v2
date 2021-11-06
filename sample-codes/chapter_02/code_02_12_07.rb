# Dateクラスは組み込みライブラリではないので、そのままでは使用できない
Date.today #=> NameError (uninitialized constant Date)

# dateライブラリを読み込むとDateクラスが使えるようになる
require 'date'
Date.today #=> #<Date: 2021-02-27 ((2459273j,0s,0n),+0s,2299161j)>

# ----------------------------------------

# foo/hello.rbから見た相対パスでbar/bye.rbを読み込む
require_relative '../bar/bye'

# ----------------------------------------

# 自ファイル（hello.rb）と同じディレクトリにあるbye.rbを読み込む
require_relative 'bye'

# ----------------------------------------

# requireで自作Rubyプログラムを読み込むこともできる（が、非推奨）
require './foo/bye'
