log_data.map do |log|
  # 注：values_atメソッドは指定したキーに対応するハッシュの値を配列として返すメソッド
  # 返ってきた値は多重代入のテクニック（2.2.8項参照）を使って複数の変数に同時に代入する
  request_id, path, status, duration, error =
    log.values_at(:request_id, :path, :status, :duration, :error)

  if status == 404 || status == 500
    "[ERROR] request_id=#{request_id}, path=#{path}, status=#{status}, error=#{error}"
  elsif duration >= 1000
    "[WARN] request_id=#{request_id}, path=#{path}, duration=#{duration}"
  else
    "[OK] request_id=#{request_id}, path=#{path}"
  end
end.join("\n")
