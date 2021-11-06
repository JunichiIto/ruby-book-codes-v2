data = [[1, 2, 3], [5, 4, 6]]
data.each do |numbers|
  case numbers
  in [a, b, c] if b == a + 1 && c == b + 1
    # 要素が3つの配列かつ、3つの連続した整数であればマッチ
    # 値が連続しているかどうかはガード式で判定する
    puts "matched: #{numbers}"
  else
    puts "not matched: #{numbers}"
  end
end
#=> matched: [1, 2, 3]
#   not matched: [5, 4, 6]

# ----------------------------------------

# n, 2のパターンは1, 2にマッチする。ガード条件も真となる（マッチ成功）
case [1, 2, 3, 2, 1]
in [*, n, 2, *] if n == 1
  "matched: #{n}"
else
  'not matched'
end
#=> "matched: 1"

# n, 2のパターンは1, 2にマッチするが、ガード条件は偽となる
# データ上、3, 2にもマッチするが、再検索は行われない（マッチ失敗）
case [1, 2, 3, 2, 1]
in [*, n, 2, *] if n == 3
  "matched: #{n}"
else
  'not matched'
end
#=> "not matched"
