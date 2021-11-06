class LogFormatterTest < Minitest::Test
  def test_format_log
    text = LogFormatter.format_log
    lines = text.lines(chomp: true)
    assert_equal '[OK] request_id=1, path=/products/1', lines[0]
    assert_equal '[ERROR] request_id=2, path=/wp-login.php, status=404, error=Not found', lines[1]
    assert_equal '[WARN] request_id=3, path=/products, duration=1023.8', lines[2]
  end
end

# ----------------------------------------

log_data.map do |log|
  case log
  in {request_id:, path:, status: 404, error:}
    "[ERROR] request_id=#{request_id}, path=#{path}, status=404, error=#{error}"
  in {request_id:, path:, duration: 1000.. => duration}
    # asパターンで:durationの値を変数durationに代入する
    "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
  in {request_id:, path:}
    "[OK] request_id=#{request_id}, path=#{path}"
  end
end.join("\n")
