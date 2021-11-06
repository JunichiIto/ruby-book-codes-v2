# キーがシンボルなら新しいハッシュ記法に変換する
old_syntax = <<TEXT
{
  :name => 'Alice',
  :age=>20,
  :gender  =>  :female
}
TEXT
convert_hash_syntax(old_syntax)
#=> {
#     name: 'Alice',
#     age: 20,
#     gender: :female
#   }
