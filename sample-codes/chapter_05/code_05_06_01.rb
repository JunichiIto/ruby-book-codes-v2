currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.keys #=> [:japan, :us, :india]

# ----------------------------------------

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.values #=> ["yen", "dollar", "rupee"]

# ----------------------------------------

currencies = { japan: 'yen', us: 'dollar', india: 'rupee' }
currencies.has_key?(:japan) #=> true
currencies.has_key?(:italy) #=> false
