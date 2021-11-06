class User
end

# ----------------------------------------

user = User.new
user.to_s #=> "#<User:0x000000010a027618>"
user.nil? #=> false

# ----------------------------------------

User.superclass #=> Object

# ----------------------------------------

user = User.new
user.methods.sort #=> [:!, :!=, :!~, :<=>, :==, （省略） :untrust, :untrusted?]
