# ブロックではなく、1個のProcオブジェクトを引数として受け取る
def greet(arrange_proc)
  puts 'おはよう'
  text = arrange_proc.call('こんにちは')
  puts text
  puts 'こんばんは'
end

# Procオブジェクトを普通の引数としてgreetメソッドに渡す（&を付けない）
repeat_proc = proc { |text| text * 2 }
greet(repeat_proc)
#=> おはよう
#   こんにちはこんにちは
#   こんばんは

# ----------------------------------------

# 3種類のProcオブジェクトを受け取り、それぞれのあいさつ文字列に適用するgreetメソッド
def greet(proc_1, proc_2, proc_3)
  puts proc_1.call('おはよう')
  puts proc_2.call('こんにちは')
  puts proc_3.call('こんばんは')
end

# greetメソッドに渡すProcオブジェクトを用意する
shuffle_proc = proc { |text| text.chars.shuffle.join }
repeat_proc = proc { |text| text * 2 }
question_proc = proc { |text| "#{text}?" }

# 3種類のProcオブジェクトをgreetメソッドに渡す
greet(shuffle_proc, repeat_proc, question_proc)
#=> はおうよ
#   こんにちはこんにちは
#   こんばんは?
