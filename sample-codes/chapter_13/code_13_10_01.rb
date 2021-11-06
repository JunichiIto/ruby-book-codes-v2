def fizz_buzz(n)
  if n % 15 == 0
    'Fizz Buzz'
  elsif n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

# ----------------------------------------

require 'minitest/autorun'
require_relative '../lib/fizz_buzz'

class FizzBuzzTest < Minitest::Test
  def test_fizz_buzz
    assert_equal '1', fizz_buzz(1)
    assert_equal '2', fizz_buzz(2)
    assert_equal 'Fizz', fizz_buzz(3)
    assert_equal '4', fizz_buzz(4)
    assert_equal 'Buzz', fizz_buzz(5)
    assert_equal 'Fizz', fizz_buzz(6)
    assert_equal 'Fizz Buzz', fizz_buzz(15)
  end
end

# ----------------------------------------

<<RBS
# TypeProf 0.12.0

# Classes
class Object
  private
  def fizz_buzz: (Integer n) -> String
end

class FizzBuzzTest
  def test_fizz_buzz: -> untyped
end
RBS

# ----------------------------------------

<<RBS
class Object
  private
  def fizz_buzz: (Integer n) -> String
end
RBS

# ----------------------------------------

<<RBS
class FizzBuzzTest
  def test_fizz_buzz: -> untyped
end
RBS
