# コラム：二重コロン（::）とドット（.）の違い

module Sample
  class User
    NAME = 'Alice'

    def self.hello(name = NAME)
      "Hello, I am #{name}."
    end
  end
end

# ----------------------------------------

Sample::User::NAME #=> "Alice"

Sample::User.hello #=> "Hello, I am Alice."

# ----------------------------------------

Sample::User::hello #=> "Hello, I am Alice."

# ----------------------------------------

s = 'abc'
s::upcase #=> "ABC"

# ----------------------------------------

# Sample.UserだとUserがメソッドと見なされる
Sample.User::NAME #=> undefined method `User' for Sample:Module (NoMethodError)
# User.NAMEだとNAMEがメソッドと見なされる
Sample::User.NAME #=> undefined method `NAME' for Sample::User:Class (NoMethodError)
