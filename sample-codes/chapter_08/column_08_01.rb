self.class #=> Object

# ----------------------------------------

# トップレベルにメソッドを定義すると、どのクラスに定義されたことになる？
def greet
  'Hi!'
end

# ----------------------------------------

class Object
  private

  def greet
    'Hi!'
  end
end

# ----------------------------------------

# private_instance_methodsはそのクラスで定義されているprivateメソッド名の一覧を配列で返す
# また、grepメソッドは引数にマッチした要素を配列で返す
Object.private_instance_methods.grep(:greet)
#=> [:greet]

# ----------------------------------------

def greet
  'Hi!'
end

class Foo
  def bar
    # トップレベルで定義したメソッドを呼び出す
    greet
  end
end

Foo.new.bar #=> "Hi!"
