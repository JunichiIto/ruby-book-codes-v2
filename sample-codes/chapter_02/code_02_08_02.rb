# %q! !はシングルクオートで囲んだことと同じになる
puts %q!He said, "Don't speak."!  #=> He said, "Don't speak."

# %Q! !はダブルクオートで囲んだことと同じになる（改行文字や式展開が使える）
something = "Hello."
puts %Q!He said, "#{something}"!  #=> He said, "Hello."

# %! !もダブルクオートで囲んだことと同じになる
something = "Bye."
puts %!He said, "#{something}"!   #=> He said, "Bye."

# ----------------------------------------

puts 'He said, "Don\'t speak."'  #=> He said, "Don't speak."

something = "Hello."
puts "He said, \"#{something}\"" #=> He said, "Hello."

something = "Bye."
puts "He said, \"#{something}\"" #=> He said, "Bye."

# ----------------------------------------

# ?を区切り文字として使う
puts %q?He said, "Don't speak."?  #=> He said, "Don't speak."

# { }を区切り文字として使う
puts %q{He said, "Don't speak."}  #=> He said, "Don't speak."
