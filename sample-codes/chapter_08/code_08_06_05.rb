# モジュール構文とクラス構文を入れ子にして書く場合
module Baseball
  class Second
    # 省略
  end
end

# ::を使ってフラットに書く場合（入れ子なし）
class Baseball::Second
  # ...
end

# ----------------------------------------

module Baseball
  # スコアを記録するためのFileクラスを定義する
  class File
    # 省略
  end
end

# ----------------------------------------

module Baseball
  class Second
    def file_with_nesting
      # 入れ子ありのクラス定義でFileクラスを参照する
      puts File
    end
  end
end

class Baseball::Second
  def file_without_nesting
    # 入れ子なしのクラス定義でFileクラスを参照する
    puts File
  end
end

second = Baseball::Second.new
second.file_with_nesting    #=> Baseball::File
second.file_without_nesting #=> File

# ----------------------------------------

class Baseball::Second
  def file_without_nesting
    # 入れ子なしのクラス定義では明示的に名前空間を付ける必要がある
    puts Baseball::File
  end
end

second = Baseball::Second.new
second.file_without_nesting #=> Baseball::File

# ----------------------------------------

module Baseball
  class Second
    def file_with_nesting
      # 入れ子ありのクラス定義で組み込みライブラリのFileクラスを参照する
      puts ::File
    end
  end
end

second = Baseball::Second.new
second.file_with_nesting #=> File
