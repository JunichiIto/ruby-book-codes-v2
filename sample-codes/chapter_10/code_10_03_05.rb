# Proc.newの場合
add_proc = Proc.new { |a, b| a + b }
add_proc.class    #=> Proc
add_proc.lambda?  #=> false

# ラムダの場合
add_lambda = ->(a, b) { a + b }
add_lambda.class   #=> Proc
add_lambda.lambda? #=> true
