# モジュールの特異メソッドとしてsqrt（平方根）メソッドを利用する
Math.sqrt(2) #=> 1.4142135623730951

class Calculator
  include Math

  def calc_sqrt(n)
    # ミックスインとしてMathモジュールのメソッドを使う
    sqrt(n)
  end
end

calculator = Calculator.new
calculator.calc_sqrt(2) #=> 1.4142135623730951

# ----------------------------------------

Math::E  #=> 2.718281828459045
Math::PI #=> 3.141592653589793

# ----------------------------------------

# Kernelモジュールの特異メソッドとしてputsやpを呼び出す
Kernel.puts 'Hello.' #=> Hello.
Kernel.p [1, 2, 3]   #=> [1, 2, 3]
