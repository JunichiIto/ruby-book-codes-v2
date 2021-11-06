# コラム：RubyとDSLの相性のよさ

desc 'テスト用のタスクです。'
task :hello_world do
  puts 'Hello, world!'
end

# ----------------------------------------

# これはタスクの説明だよ
desc 'テスト用のタスクです。'
# これはhello_worldというタスクの定義だよ
task :hello_world do
  # この中がタスクの中身だよ
  puts 'Hello, world!'
end

# ----------------------------------------

class MyRakeFile < RakeFile
  def main()
    desc('テスト用のタスクです。');
    task(:hello_world, -> {
      puts('Hello, world!');
    });
  end
end
