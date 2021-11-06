begin
  # 例外が起きそうな処理
rescue
  # StandardErrorとそのサブクラスのみ捕捉される
end

# ----------------------------------------

# 例外処理の悪い例
begin
  # 例外が起きそうな処理
rescue Exception
  # Exceptionとそのサブクラスが捕捉される。つまり、NoMemoryErrorやSystemExitまで捕捉されてしまう
end
