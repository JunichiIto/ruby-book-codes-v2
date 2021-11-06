module StringShuffle
  # refinementsが目的なので、refineメソッドを使う
  refine String do
    def shuffle
      chars.shuffle.join
    end
  end
end

# ----------------------------------------

# 通常はStringクラスにshuffleメソッドはない
'Alice'.shuffle #=> undefined method `shuffle' for "Alice":String (NoMethodError)

class User
  # refinementsを有効化する
  using StringShuffle

  def initialize(name)
    @name = name
  end

  def shuffled_name
    # Userクラスの内部であればStringクラスのshuffleメソッドが有効になる
    @name.shuffle
  end

  # Userクラスを抜けるとrefinementsは無効になる
end

user = User.new('Alice')
# Userクラス内ではshuffleメソッドが有効になっている
user.shuffled_name #=> "cliAe"

# Userクラスを経由しない場合はshuffleメソッドは使えない
'Alice'.shuffle #=> undefined method `shuffle' for "Alice":String (NoMethodError)

# ----------------------------------------

# StringShuffleモジュールを読み込む
require_relative 'string_shuffle'

# ここではまだshuffleメソッドが使えない
# p 'Alice'.shuffle

# トップレベルでusingすると、ここからファイルの最後までshuffleメソッドが有効になる
using StringShuffle

puts 'Alice'.shuffle #=> ecAli

class User
  def initialize(name)
    @name = name
  end

  def shuffled_name
    @name.shuffle
  end
end

user = User.new('Alice')
puts user.shuffled_name #=> cilAe

puts 'Alice'.shuffle    #=> liceA

# 他のファイルではshuffleメソッドは使えない

# ----------------------------------------

module SomeModule
  refine String do
    # Stringクラスに対する変更
  end

  refine Enumerable do
    # Enumerableモジュールに対する変更
  end
end
