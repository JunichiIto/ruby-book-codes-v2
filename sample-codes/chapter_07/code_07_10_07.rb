alice = 'I am Alice.'
bob = 'I am Bob.'

# aliceのオブジェクトにだけ、shuffleメソッドを定義する
def alice.shuffle
  chars.shuffle.join
end

# aliceはshuffleメソッドを持つが、bobは持たない
alice.shuffle #=> "m le a.icIA"
bob.shuffle   #=> undefined method `shuffle' for "I am Bob.":String (NoMethodError)

# ----------------------------------------

n = 1
def n.foo
  'foo'
end
#=> can't define singleton (TypeError)

sym = :alice
def sym.bar
  'bar'
end
#=> can't define singleton (TypeError)

# ----------------------------------------

alice = 'I am Alice.'
# aliceというオブジェクトに特異メソッドを追加するもう一つの方法
class << alice
  def shuffle
    chars.shuffle.join
  end
end
alice.shuffle #=> " ci Ama.lIe"
