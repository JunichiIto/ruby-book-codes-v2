<<JSON
[
  {"request_id": "1", "path": "/products/1", "status": 200, "duration": 651.7},
  {"request_id": "2", "path": "/wp-login.php", "status": 404, "duration": 48.1, "error": "Not found"},
  {"request_id": "3", "path": "/products", "status": 200, "duration": 1023.8},
  {"request_id": "4", "path": "/dangerous", "status": 500, "duration": 43.6, "error": "Internal server error"}
]
JSON

# ----------------------------------------

<<TEXT
[OK] request_id=1, path=/products/1
[ERROR] request_id=2, path=/wp-login.php, status=404, error=Not found
[WARN] request_id=3, path=/products, duration=1023.8
[ERROR] request_id=4, path=/dangerous, status=500, error=Internal server error
TEXT

# ----------------------------------------

<<JSON
// JSONのハッシュ（正確にはオブジェクト）
{"foo": 123}
JSON

# 上記のJSONとほぼ同じデータを表すRubyのハッシュリテラル
{foo: 123}
