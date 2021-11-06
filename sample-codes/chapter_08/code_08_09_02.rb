module Greetable
  def hello
    'hello.'
  end
end

module Aisatsu
  # 別のモジュールをincludeする
  include Greetable

  def konnichiwa
    'こんにちは。'
  end
end

class User
  # Aisatsuモジュールだけをincludeする
  include Aisatsu
end

# ----------------------------------------

user = User.new

# Aisatsuモジュールのメソッドを呼び出す
user.konnichiwa #=> "こんにちは。"

# Greetableモジュールのメソッドを呼び出す
user.hello      #=> "hello."

# ----------------------------------------

User.ancestors #=> [User, Aisatsu, Greetable, Object, Kernel, BasicObject]
