# コラム：で、yieldやProcってどこで使うの？

class Guitar < ApplicationRecord
  scope :gold, -> { where(color: 'gold') }
end

# ----------------------------------------

# 処理の開始時と終了時にログを記録する共通メソッド
# （ここでは実際にログに記録する代わりにputsで代用）
def with_logging(name)
  puts "[LOG] START: #{name}"
  ret = yield
  puts "[LOG] END: #{name}"
  ret
end

# ----------------------------------------

# ログ付きで数字の加算を実行する
answer = with_logging('add numbers') do
  1 + 2
end
#=> [LOG] START: add numbers
#   [LOG] END: add numbers
answer
#=> 3

# ----------------------------------------

# ログ付きでmapメソッドを実行する
numbers = with_logging('Array#map') do
  [1, 2, 3].map { |n| n * 10 }
end
#=> [LOG] START: Array#map
#   [LOG] END: Array#map
numbers
#=> [10, 20, 30]
