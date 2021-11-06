# マッチすればtrueを返す
/\d{3}-\d{4}/.match?('123-4567') #=> true

# マッチしても組み込み変数やRegexp.last_matchを書き換えない
$~                #=> nil
Regexp.last_match #=> nil

# 文字列と正規表現を入れ替えてもOK
'123-4567'.match?(/\d{3}-\d{4}/) #=> true
