puts 'Start.'

# 例外処理を組み込んで例外に対処する
begin
  1 + '10'
rescue
  puts '例外が発生したが、このまま続行する'
end

# 例外処理を組み込んだので、最後まで実行可能
puts 'End.'
