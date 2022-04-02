class RainbowableTest < Minitest::Test
  def setup
    # 文字列や配列でrainbowメソッドが呼び出せるよう、Rainbowableモジュールをinclude
    String.include Rainbowable
    Array.include Rainbowable
  end

  def test_rainbow
    # 省略
  end
end

# ----------------------------------------

def test_rainbow
  expected = "\e[31mH\e[32me\e[33ml\e[34ml\e[35mo\e[36m,\e[31m \e[32mw\e[33mo\e[34mr\e[35ml\e[36md\e[31m!\e[0m"
  assert_equal expected, 'Hello, world!'.rainbow

  expected = "\e[31m[\e[32m1\e[33m,\e[34m \e[35m2\e[36m,\e[31m \e[32m3\e[33m]\e[0m"
  assert_equal expected, [1, 2, 3].rainbow
end

# ----------------------------------------

module Rainbowable
  def rainbow
    # 1. to_sメソッドを使って自分自身の文字列表現を取得する
    str = self.to_s

    # ループカウンタと、色を付けた文字を順に格納する配列を用意
    count = 0
    colored_chars = []

    # 2. 取得した文字列を1文字ずつループ処理する
    str.each_char do |char|
      # 文字色は31から36まで順に切り替え、最後まで進んだらまた31に戻る
      color = 31 + count % 6

      # 3. 各文字の手前にANSIエスケープシーケンスを付与する（さらに、その文字を配列に追加する）
      colored_chars << "\e[#{color}m#{char}"

      count += 1
    end

    # 4. 各文字を連結して1つの文字列にする
    ret = colored_chars.join

    # 5. 最後に文字色をリセットするための\e[0mを付与する
    ret + "\e[0m"
  end
end

# ----------------------------------------

def test_rainbow
  # 省略

  # rainbowメソッドの戻り値をターミナルに出力
  puts 'Hello, world!'.rainbow
  puts [1, 2, 3].rainbow
end
