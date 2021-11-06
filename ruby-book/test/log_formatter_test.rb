require 'minitest/autorun'
require_relative '../lib/log_formatter'

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
