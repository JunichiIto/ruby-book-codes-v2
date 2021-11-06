s = 'Hello'
s.length #=> 5
s.size   #=> 5

# ----------------------------------------

class User
  def hello
    'Hello!'
  end

  # helloメソッドのエイリアスメソッドとしてgreetを定義する
  alias greet hello
end

user = User.new
user.hello #=> "Hello!"
user.greet #=> "Hello!"
