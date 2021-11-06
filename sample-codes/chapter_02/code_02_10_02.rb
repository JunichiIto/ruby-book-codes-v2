t1 = true
f1 = false
t1 and f1    #=> false
t1 or f1     #=> true
not t1       #=> false

# ----------------------------------------

t1 = true
f1 = false
!f1 || t1    #=> true
not f1 || t1 #=> false

# ----------------------------------------

# !は||よりも優先順位が高い
!(f1) || t1
# notは||よりも優先順位が低い
not(f1 || t1)

# ----------------------------------------

t1 = true
t2 = true
f1 = false

t1 || t2 && f1  #=> true
t1 or t2 and f1 #=> false

# ----------------------------------------

# &&は||よりも優先順位が高い
t1 || (t2 && f1)
# andとorの優先順位は同じなので、左から順に評価される
(t1 or t2) and f1

# ----------------------------------------

user.valid? && send_mail_to user
#=> syntax error, unexpected local variable or method, expecting `do' or '{' or '(' (SyntaxError)
#   ...ser.valid? && send_mail_to user
#   ...                           ^~~~

# ----------------------------------------

(user.valid? && send_mail_to) user

# ----------------------------------------

user.valid? and send_mail_to user

# ----------------------------------------

(user.valid?) and (send_mail_to user)

# ----------------------------------------

user.valid? && send_mail_to(user)

# ----------------------------------------

def greet(country)
  # countryがnil（または偽）ならメッセージを返してメソッドを抜ける
  country or return 'countryを入力してください'

  if country == 'japan'
    'こんにちは'
  else
    'hello'
  end
end
greet(nil)     #=> "countryを入力してください"
greet('japan') #=> "こんにちは"
