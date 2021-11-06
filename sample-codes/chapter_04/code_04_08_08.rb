a = [1, 2, 3]

# ブロックを渡さないときは指定した値が見つからないとnilが返る
a.delete(100) #=> nil

# ブロックを渡すとブロックの戻り値が指定した値が見つからないときの戻り値になる
a.delete(100) do
  'NG'
end
#=> "NG"

# ----------------------------------------

a.delete 100 do
  'NG'
end
#=> "NG"

# ----------------------------------------

a.delete 100 { 'NG' }
#=> syntax error, unexpected '{', expecting end-of-input (SyntaxError)

# ----------------------------------------

a.delete(100) { 'NG' }
#=> "NG"
