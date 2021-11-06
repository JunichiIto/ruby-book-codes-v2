# hello_worldという名前のタスクを定義する
task :hello_world do
  # ブロックの中がタスクとして実行される処理になる
  puts 'Hello, world!'
end

# ----------------------------------------

# タスクの説明を入れる
desc 'テスト用のタスクです。'
task :hello_world do
  puts 'Hello, world!'
end

# ----------------------------------------

# 名前空間を使ってタスクをグループ分けする
namespace :my_tasks do
  desc 'テスト用のタスクです。'
  task :hello_world do
    puts 'Hello, world!'
  end
end
