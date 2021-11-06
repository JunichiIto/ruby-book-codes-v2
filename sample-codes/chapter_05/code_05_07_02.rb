# !を区切り文字に使う
%s!'ruby is fun.'!  #=> :"'ruby is fun.'"

# ()を区切り文字に使う
%s('ruby is fun!') #=> :"'ruby is fun!'"

# ----------------------------------------

%i(apple orange melon) #=> [:apple, :orange, :melon]

# ----------------------------------------

name = 'Alice'

# %iでは改行文字や式展開の構文が、そのままシンボルになる
%i(hello\ngood-bye #{name.upcase}) #=> [:"hello\\ngood-bye", :"\#{name.upcase}"]

# %Iでは改行文字や式展開が有効になった上でシンボルが作られる
%I(hello\ngood-bye #{name.upcase}) #=> [:"hello\ngood-bye", :ALICE]
