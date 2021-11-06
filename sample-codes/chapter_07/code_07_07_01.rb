class User
  # デフォルトはpublic
  def hello
    'Hello!'
  end
end
user = User.new
# publicメソッドなのでクラスの外部から呼び出せる
user.hello #=> "Hello!"
