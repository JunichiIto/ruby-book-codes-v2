# コラム：injectメソッドを使ったplayメソッドのリファクタリング

numbers = [1, 2, 3, 4]
sum = numbers.inject(0) { |result, n| result + n }
sum #=> 10

# ----------------------------------------

((((0 + 1) + 2) + 3) + 4)

# ----------------------------------------

def play(original_words)
  @effects.inject(original_words) do |words, effect|
    effect.call(words)
  end
end
