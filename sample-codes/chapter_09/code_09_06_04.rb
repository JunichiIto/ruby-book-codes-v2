# 正常に終了した場合
ret =
  begin
    'OK'
  rescue => e
    'error'
  ensure
    'ensure'
  end
ret #=> "OK"

# 例外が発生した場合
ret =
  begin
    1 / 0 # ZeroDivisionErrorを発生させる
    'OK'
  rescue => e
    'error'
  ensure
    'ensure'
  end
ret #=> "error"

# ----------------------------------------

def some_method(n)
  begin
    1 / n
    'OK'
  rescue => e
    'error'
  ensure
    'ensure'
  end
end

some_method(1) #=> "OK"
some_method(0) #=> "error"
