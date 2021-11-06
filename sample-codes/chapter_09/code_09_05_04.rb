print 'Text?: '
text = gets.chomp
# 動作確認のため変数の中身を表示
puts text

# ----------------------------------------

print 'Text?: '
text = gets.chomp
print 'Pattern?: '
pattern = gets.chomp

# ----------------------------------------

print 'Text?: '
text = gets.chomp
print 'Pattern?: '
pattern = gets.chomp

regexp = Regexp.new(pattern)
matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(', ')}"
else
  puts 'Nothing matched.'
end
