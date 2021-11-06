class LogFormatterTest < Minitest::Test
  def test_format_log
    text = LogFormatter.format_log
    lines = text.lines(chomp: true)
    assert_equal '[OK] request_id=1, path=/products/1', lines[0]
    assert_equal '[ERROR] request_id=2, path=/wp-login.php, status=404, error=Not found', lines[1]
    assert_equal '[WARN] request_id=3, path=/products, duration=1023.8', lines[2]
    assert_equal '[ERROR] request_id=4, path=/dangerous, status=500, error=Internal server error', lines[3]
  end
end

# ----------------------------------------

<<JSON
// :statusは404と500で異なるが、保持しているキーは同じ
{"request_id": "2", "path": "/wp-login.php", "status": 404, "duration": 48.1, "error": "Not found"}
{"request_id": "4", "path": "/dangerous", "status": 500, "duration": 43.6, "error": "Internal server error"}
JSON

# ----------------------------------------

log_data.map do |log|
  case log
  in {request_id:, path:, status: 404 | 500 => status, error:}
    "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
  in {request_id:, path:, duration: 1000.. => duration}
    "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
  in {request_id:, path:}
    "[OK] request_id=#{request_id}, path=#{path}"
  end
end.join("\n")

# ----------------------------------------

def test_format_log
  text = LogFormatter.format_log
  puts text
  # 以下略
