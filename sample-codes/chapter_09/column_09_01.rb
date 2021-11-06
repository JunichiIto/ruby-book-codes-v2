# コラム：ensure節ではreturnを使わない

def some_method(n)
  begin
    1 / n
    'OK'
  rescue => e
    'error'
  ensure
    # ensure節にreturnを書く
    return 'ensure'
  end
end

some_method(1) #=> "ensure"
some_method(0) #=> "ensure"

# ----------------------------------------

def some_method(n)
  begin
    1 / n
    'OK'
  ensure
    # rescue節なしでensure節にreturnを書く（良くない例）
    return 'ensure'
  end
end

some_method(1) #=> "ensure"

# ZeroDivisionErrorが発生して異常終了しそうだが、正常終了してしまう
some_method(0) #=> "ensure"
