# helloメソッドをもつGreetableモジュールを定義
module Greetable
  def hello
    'hello'
  end
end

# ----------------------------------------

# モジュールのインスタンスは作成できない
greeter = Greetable.new #=> undefined method `new' for Greetable:Module (NoMethodError)

# 他のモジュールを継承して新しいモジュールを作ることはできない
module AwesomeGreetable < Greetable
end
#=> syntax error, unexpected '<' (SyntaxError)
