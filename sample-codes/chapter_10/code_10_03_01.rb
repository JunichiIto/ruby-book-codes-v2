# "Hello!"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new do
  'Hello!'
end

# do ... endのかわりに{}を使ってもよい
hello_proc = Proc.new { 'Hello!' }

# ----------------------------------------

# "Hello!"という文字列を返すProcオブジェクトを作成する
hello_proc = Proc.new { 'Hello!' }
# Procオブジェクトを実行する（文字列が返る）
hello_proc.call #=> "Hello!"

# ----------------------------------------

add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20) #=> 30

# ----------------------------------------

add_proc = Proc.new { |a = 0, b = 0| a + b }
add_proc.call         #=> 0
add_proc.call(10)     #=> 10
add_proc.call(10, 20) #=> 30

# ----------------------------------------

# Proc.newのかわりにprocメソッドを使う
add_proc = proc { |a, b| a + b }

# ----------------------------------------

# RubyでProcオブジェクトを作成し、その処理を呼び出す
add_proc = Proc.new { |a, b| a + b }
add_proc.call(10, 20) #=> 30

# ----------------------------------------

<<JavaScript
// JavaScriptで関数オブジェクトを作成し、その処理を呼び出す
const addProc = (a, b) => a + b
addProc(10, 20) //=> 30
JavaScript
