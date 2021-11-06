# target :lib do
#   signature "sig"
#
#   check "lib"                       # Directory name
#   check "Gemfile"                   # File name
#   check "app/models/**/*.rb"        # Glob
#   # ignore "lib/templates/*.rb"
#
#   # library "pathname", "set"       # Standard libraries
#   # library "strong_json"           # Gems
# end

# target :spec do
#   signature "sig", "sig-private"
#
#   check "spec"
#
#   # library "pathname", "set"       # Standard libraries
#   # library "rspec"
# end

# ----------------------------------------

target :lib do
  check 'lib/fizz_buzz.rb'
  check 'test/fizz_buzz_test.rb'
  signature 'sig'
end

# ----------------------------------------

# 省略

class FizzBuzzTest
  def test_fizz_buzz: -> untyped
  def assert_equal: (untyped, untyped) -> void
end

# ----------------------------------------

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    # fizz_buzzメソッドの引数にわざとnilを渡す
    assert_equal '1', fizz_buzz(nil)
    # 以下略

# ----------------------------------------

def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    # Integer型のnに対してわざとupcaseメソッドを呼び出す
    n.upcase
  end
end
