limit ||= 10

# ----------------------------------------

class User
  # ...

  def icon_url
    twitter_data[:icon]
  end

  def location
    twitter_data[:location]
  end

  def twitter_data
    # Twitter APIからデータを取得して変数dataに代入する処理を書く
    # .
    # .
    data
  end
end

# ----------------------------------------

def twitter_data
  # インスタンス変数と||=を使ったメモ化（データの保持）
  @twitter_data ||= begin
    # Twitter APIからデータを取得する処理を書く
    # .
    # .
  end
end

# ----------------------------------------

# 遅延初期化を使わない場合
class Foo
  attr_reader :bar

  # この場合、Foo.newするだけで時間がかかってしまう
  def initialize
    @bar = # 何か重い処理で@barを初期化...
  end
end

# 遅延初期化を使う場合
class Foo
  # initializeでは何もしないため、Foo.newが即座に終わる
  # def initialize
  # end

  # 遅延初期化のテクニックを使ってbarの値を返す
  def bar
    @bar ||= # 何か重い処理で@barを初期化...
  end
end
