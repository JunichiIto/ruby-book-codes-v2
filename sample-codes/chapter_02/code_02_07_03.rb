fizz_buzz(1)  #=> "1"
fizz_buzz(2)  #=> "2"
fizz_buzz(3)  #=> "Fizz"
fizz_buzz(4)  #=> "4"
fizz_buzz(5)  #=> "Buzz"
fizz_buzz(6)  #=> "Fizz"
fizz_buzz(15) #=> "Fizz Buzz"

# ----------------------------------------

def fizz_buzz(n)
  n.to_s
end

puts fizz_buzz(1)
puts fizz_buzz(2)

# ----------------------------------------

def fizz_buzz(n)
  if n % 3 == 0
    'Fizz'
  else
    n.to_s
  end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)

# ----------------------------------------

def fizz_buzz(n)
  if n % 3 == 0
    'Fizz'
  elsif n % 5 == 0
    'Buzz'
  else
    n.to_s
  end
end

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)

# ----------------------------------------

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

puts fizz_buzz(1)
puts fizz_buzz(2)
puts fizz_buzz(3)
puts fizz_buzz(4)
puts fizz_buzz(5)
puts fizz_buzz(6)
puts fizz_buzz(15)
