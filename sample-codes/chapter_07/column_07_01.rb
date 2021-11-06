# コラム：irb上でクラス定義を繰り返す際の注意点

class User
  def hello
    'Hello.'
  end
end

# このクラス定義は既存のUserクラスにbyeメソッドを追加することになる
class User
  def bye
    'Bye.'
  end
end

user = User.new
# helloメソッドもbyeメソッドも呼び出せる
user.hello #=> "Hello."
user.bye   #=> "Bye."
