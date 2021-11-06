synth = WordSynth.new
synth.play('Ruby is fun!') #=> "Ruby is fun!"

# ----------------------------------------

synth = WordSynth.new

# エフェクトを追加する
synth.add_effect(Effects.reverse)

# 各単語が逆順に出力される
synth.play('Ruby is fun!') #=> "ybuR si !nuf"

# ----------------------------------------

synth = WordSynth.new
synth.add_effect(Effects.echo(2))
synth.play('Ruby is fun!') #=> "RRuubbyy iiss ffuunn!!"

# ----------------------------------------

synth = WordSynth.new

# エフェクトを2つ追加する
synth.add_effect(Effects.reverse)
synth.add_effect(Effects.echo(2))

# 単語を逆順にしたあと、2回ずつ文字を連続させる
synth.play('Ruby is fun!') #=> "yybbuuRR ssii !!nnuuff"

# ----------------------------------------

synth = WordSynth.new
synth.add_effect(Effects.loud(3))
synth.play('Ruby is fun!') #=> "RUBY!!! IS!!! FUN!!!!"

# ----------------------------------------

synth = WordSynth.new
# 全種類のエフェクトを追加
synth.add_effect(Effects.echo(2))
synth.add_effect(Effects.loud(3))
synth.add_effect(Effects.reverse)
# エコー > ラウド > リバースの順に効果が適用される
synth.play('Ruby is fun!') #=> "!!!YYBBUURR !!!SSII !!!!!NNUUFF"

# ----------------------------------------

class WordSynth
  def initialize
    @effects = []
  end

  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    words = original_words
    @effects.each do |effect|
      # 効果を適用する
      words = effect.call(words)
    end
    words
  end
end
