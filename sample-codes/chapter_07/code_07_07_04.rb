class User
  private

  # クラスメソッドもprivateメソッドになる？
  def self.hello
    'Hello!'
  end
end
# クラスメソッドはprivateメソッドにならない！
User.hello #=> "Hello!"

# ----------------------------------------

class User
  class << self
    # class << selfの構文ならクラスメソッドでもprivateが機能する
    private

    def hello
      'Hello!'
    end
  end
end
User.hello #=> private method `hello' called for User:Class (NoMethodError)

# ----------------------------------------

class User
  def self.hello
    'Hello!'
  end
  # 後からクラスメソッドをprivateに変更する
  private_class_method :hello
end
User.hello #=> private method `hello' called for User:Class (NoMethodError)
