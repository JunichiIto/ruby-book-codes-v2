t1 = true
t2 = true
f1 = false
t1 && t2 #=> true
t1 && f1 #=> false

# ----------------------------------------

t1 = true
f1 = false
f2 = false
t1 || f1 #=> true
f1 || f2 #=> false

# ----------------------------------------

t1 = true
t2 = true
f1 = false
f2 = false
t1 && t2 || f1 && f2     #=> true
# 上の式と下の式は同じ意味
(t1 && t2) || (f1 && f2) #=> true

# ----------------------------------------

t1 = true
t2 = true
f1 = false
f2 = false
t1 && (t2 || f1) && f2 #=> false

# ----------------------------------------

t1 = true
f1 = false
!t1 #=> false
!f1 #=> true

# ----------------------------------------

t1 = true
f1 = false
t1 && f1    #=> false
!(t1 && f1) #=> true
