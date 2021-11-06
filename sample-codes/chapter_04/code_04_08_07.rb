# sample.txtを開いて文字列を書き込む（クローズ処理は自動的に行われる）
File.open('./sample.txt', 'w') do |file|
  file.puts('1行目のテキストです。')
  file.puts('2行目のテキストです。')
  file.puts('3行目のテキストです。')
end
