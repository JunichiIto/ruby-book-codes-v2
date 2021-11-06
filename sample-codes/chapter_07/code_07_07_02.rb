class User
  # ここから下で定義されたメソッドはprivate
  private

  def hello
    'Hello!'
  end
end
user = User.new
# privateメソッドなのでクラスの外部から呼び出せない
user.hello #=> private method `hello' called for #<User:0x000000014311d9a8> (NoMethodError)

# ----------------------------------------

class User
  def hello
    # Ruby 2.6以前 = selfを付けるとエラー
    # Ruby 2.7以降 = selfを付けても付けなくてもOK
    "Hello, I am #{self.name}."
  end

  private

  def name
    'Alice'
  end
end
user = User.new

# Ruby 2.6以前 = エラーになる
user.hello
#=> NoMethodError (private method `name' called for #<User:0x000000012d8508a8>)

# Ruby 2.7以降 = エラーにならない
user.hello
#=> "Hello, I am Alice."
