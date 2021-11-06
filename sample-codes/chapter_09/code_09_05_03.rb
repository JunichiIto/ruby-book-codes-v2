# getsメソッドを呼ぶとプログラムはユーザーの入力を待つ
input = gets
# (Helloと入力してからリターンキーを押す)
input #=> "Hello\n"

# ----------------------------------------

input = gets
# (Helloと入力してからリターンキーを押す)
input = input.chomp
input #=> "Hello"

# ----------------------------------------

input = gets.chomp
# (Helloと入力してからリターンキーを押す)
input #=> "Hello"
