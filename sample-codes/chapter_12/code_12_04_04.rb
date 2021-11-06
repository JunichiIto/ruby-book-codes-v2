require 'debug'

def fizz_buzz(n)
  binding.break
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

# Ruby 2.6または2.7の場合
gem 'debug'
require 'debug'
