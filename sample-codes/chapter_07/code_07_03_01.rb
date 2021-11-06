User.new

# ----------------------------------------

class User
  def initialize
    puts 'Initialized.'
  end
end
User.new
#=> Initialized.

# ----------------------------------------

user = User.new
user.initialize
#=> private method `initialize' called for #<User:0x000000015583fa80 ...> (NoMethodError)

# ----------------------------------------

class User
  def initialize(name, age)
    puts "name: #{name}, age: #{age}"
  end
end
User.new #=> wrong number of arguments (given 0, expected 2) (ArgumentError)
User.new('Alice', 20) #=> name: Alice, age: 20
