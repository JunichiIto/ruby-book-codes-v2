class User
  def initialize(name)
    @name = name
  end

  # これはインスタンスメソッド
  def hello
    # @nameの値はインスタンスによって異なる
    "Hello, I am #{@name}."
  end
end
alice = User.new('Alice')
# インスタンスメソッドはインスタンス（オブジェクト）に対して呼び出す
alice.hello #=> "Hello, I am Alice."

bob = User.new('Bob')
# インスタンスによって内部のデータが異なるので、helloメソッドの結果も異なる
bob.hello   #=> "Hello, I am Bob."

# ----------------------------------------

class User
  def initialize(name)
    @name = name
  end

  # self.を付けるとクラスメソッドになる
  def self.create_users(names)
    # mapメソッドを忘れた人は「4.4.1 map/collect」の項を参照
    names.map do |name|
      User.new(name)
    end
  end

  # これはインスタンスメソッド
  def hello
    "Hello, I am #{@name}."
  end
end

names = ['Alice', 'Bob', 'Carol']
# クラスメソッドの呼び出し
users = User.create_users(names)
users.each do |user|
  # インスタンスメソッドの呼び出し
  puts user.hello
end
#=> Hello, I am Alice.
#   Hello, I am Bob.
#   Hello, I am Carol.
