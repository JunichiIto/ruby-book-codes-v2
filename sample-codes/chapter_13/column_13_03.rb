# コラム：もうひとつの型検査ツール = Sorbet

# typed: true
extend T::Sig

sig {params(name: String).returns(Integer)}
def main(name)
  puts "Hello, #{name}!"
  name.length
end

main("Sorbet") # ok!
main()   # error: Not enough arguments provided
man("")  # error: Method `man` does not exist
