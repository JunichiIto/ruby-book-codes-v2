fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # すべての繰り返し処理を脱出する
        throw :done
      end
    end
  end
end
#=> melon, 2
#   melon, 1
#   melon, 3
#   orange, 1
#   orange, 3

# ----------------------------------------

fruits = ['apple', 'melon', 'orange']
numbers = [1, 2, 3]
catch :done do
  fruits.shuffle.each do |fruit|
    numbers.shuffle.each do |n|
      puts "#{fruit}, #{n}"
      if fruit == 'orange' && n == 3
        # catchと一致しないタグをthrowする
        throw :foo
      end
    end
  end
end
#=> orange, 1
#   orange, 3
#   UncaughtThrowError: uncaught throw :foo

# ----------------------------------------

ret =
  catch :done do
    throw :done
  end
ret #=> nil

ret =
  catch :done do
    throw :done, 123
  end
ret #=> 123
