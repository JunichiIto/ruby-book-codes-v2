module NameChangeable
  def change_name
    # include先のクラスのインスタンス変数を変更する
    @name = 'ありす'
  end
end

class User
  include NameChangeable

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

user = User.new('alice')
user.name #=> "alice"

# モジュールで定義したメソッドでインスタンス変数を書き換える
user.change_name
user.name #=> "ありす"

# ----------------------------------------

module NameChangeable
  def change_name
    # セッターメソッド経由でデータを変更する
    # （ミックスイン先のクラスでセッターメソッドが未定義であれば、エラーが発生して実装上の問題に気づける）
    self.name = 'ありす'
  end
end

class User
  include NameChangeable

  # ゲッターメソッドとセッターメソッドを用意する
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# Userクラスの使い方は先ほどと同じ
user = User.new('alice')
user.change_name
user.name #=> "ありす"
