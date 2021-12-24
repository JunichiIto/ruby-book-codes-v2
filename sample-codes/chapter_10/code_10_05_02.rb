reverse_proc = proc { |s| s.reverse }
# mapメソッドにブロックを付ける代わりに、Procオブジェクトを渡す（ただし&が必要）
['Ruby', 'Java', 'Python'].map(&reverse_proc) #=> ["ybuR", "avaJ", "nohtyP"]

# ----------------------------------------

reverse_proc = proc { |s| s.reverse }
other_proc = reverse_proc.to_proc
# Procオブジェクトに対してto_procメソッドを呼んでも自分自身が返るだけ
reverse_proc.equal?(other_proc) #=> true

# ----------------------------------------

split_proc = :split.to_proc
split_proc #=> #<Proc:0x0000000312f9a0(&:split) (lambda)>

# ----------------------------------------

# 引数が1つの場合は 'a-b-c-d e'.split と同じ（ホワイトスペースで分割する）
split_proc.call('a-b-c-d e') #=> ["a-b-c-d", "e"]

# ----------------------------------------

# 引数が2つの場合は 'a-b-c-d e'.split('-') と同じ（指定された文字で分割する）
split_proc.call('a-b-c-d e', '-') #=> ["a", "b", "c", "d e"]

# ----------------------------------------

# 引数が3つの場合は 'a-b-c-d e'.split('-', 3) と同じ（分割する個数を制限する）
split_proc.call('a-b-c-d e', '-', 3) #=> ["a", "b", "c-d e"]

# ----------------------------------------

['ruby', 'java', 'python'].map { |s| s.upcase } #=> ["RUBY", "JAVA", "PYTHON"]
['ruby', 'java', 'python'].map(&:upcase)        #=> ["RUBY", "JAVA", "PYTHON"]
