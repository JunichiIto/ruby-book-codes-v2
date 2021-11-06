require 'minitest/autorun'
require_relative '../lib/log_formatter'

class LogFormatterTest < Minitest::Test
  def test_format_log
    # とりあえずプログラムを動かすためのコードを書く
    LogFormatter.format_log
  end
end

# ----------------------------------------

require 'net/http'
require 'uri'
require 'json'

module LogFormatter
  def self.format_log
    uri = URI.parse('https://samples.jnito.com/access-log.json')
    json = Net::HTTP.get(uri)
    log_data = JSON.parse(json, symbolize_names: true)
    pp log_data
  end
end

# ----------------------------------------

# プログラムの実行に必要なライブラリの読み込み
require 'net/http'
require 'uri'
require 'json'

# ----------------------------------------

# Net::HTTP.getを使ってインターネット上のデータを取得する
# ただし、URLを文字列のまま渡すことはできないので、URI.parseでURI::HTTPSオブジェクトに変換する
uri = URI.parse('https://samples.jnito.com/access-log.json')
json = Net::HTTP.get(uri)

# 取得したJSON文字列をパースしてRubyのオブジェクト（ハッシュを要素とする配列）に変換する
# ハッシュのキーは文字列がデフォルトだが、symbolize_names: trueオプションを付けるとシンボルになる
log_data = JSON.parse(json, symbolize_names: true)

# ppメソッドを使ってハッシュの中身をターミナルに出力する（ppメソッドについては2.12.10項を参照）
pp log_data
