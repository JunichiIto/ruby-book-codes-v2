# コラム：メソッド定義時の引数の順番

def foo(a, b, c = 3, d = 4, *ef, g, h, i: 9, j: 10, **kl, &block)
  "a: #{a}, b: #{b}, c: #{c}, d: #{d}, ef: #{ef}, g: #{g}, h: #{h}, i: #{i}, j: #{j}, kl: #{kl}, block: #{block}"
end

foo(1, 2, 3, 4, 5, 6, 7, 8, i: 9, j: 10, k: 11, l: 12) { 13 }
#=> "a: 1, b: 2, c: 3, d: 4, ef: [5, 6], g: 7, h: 8, i: 9, j: 10, kl: {:k=>11, :l=>12}, block: #<Proc:0x007f9f19228ef8>"
