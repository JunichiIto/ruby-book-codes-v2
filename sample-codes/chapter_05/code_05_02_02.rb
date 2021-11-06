currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key, value|
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee

# ----------------------------------------

currencies = { 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee' }

currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key} : #{value}"
end
#=> japan : yen
#   us : dollar
#   india : rupee
