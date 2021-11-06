class LogFormatterTest < Minitest::Test
  def test_format_log
    text = LogFormatter.format_log
    lines = text.lines(chomp: true)
    assert_equal '[OK] request_id=1, path=/products/1', lines[0]
  end
end

# ----------------------------------------

text = "abc\ndef\n"
# そのままだと各要素に行末の改行文字（"\n"）が残る
text.lines              #=> ["abc\n", "def\n"]
# chomp: trueを付けると改行文字が削除される
text.lines(chomp: true) #=> ["abc", "def"]

# ----------------------------------------

module LogFormatter
  def self.format_log
    uri = URI.parse('https://samples.jnito.com/access-log.json')
    json = Net::HTTP.get(uri)
    log_data = JSON.parse(json, symbolize_names: true)

    log_data.map do |log|
      case log
      in {request_id:, path:}
        "[OK] request_id=#{request_id}, path=#{path}"
      end
    end.join("\n")
  end
end

# ----------------------------------------

log_data.map do |log|
  p log # pメソッドでlogの中身を確認する（確認できたら消すこと）
  case log
  in {request_id:, path:}
    "[OK] request_id=#{request_id}, path=#{path}"
  end
end.join("\n")
