status = 'error'
if status != 'ok'
  '何か異常があります'
end
#=> "何か異常があります"

# ----------------------------------------

status = 'error'
unless status == 'ok'
  '何か異常があります'
end
#=> "何か異常があります"

# ----------------------------------------

status = 'ok'
unless status == 'ok'
  '何か異常があります'
else
  '正常です'
end
#=> "正常です"

# ----------------------------------------

status = 'error'

# unlessの結果を変数に代入する
message =
  unless status == 'ok'
    '何か異常があります'
  else
    '正常です'
  end

message #=> "何か異常があります"

# unlessを修飾子として使う
'何か異常があります' unless status == 'ok'
#=> "何か異常があります"

# ----------------------------------------

status = 'error'
unless status == 'ok' then
  '何か異常があります'
end
#=> "何か異常があります"

# ----------------------------------------

status = 'error'
# unlessを無理に使わなくてもよい
if status != 'ok'
  '何か異常があります'
end
#=> "何か異常があります"
