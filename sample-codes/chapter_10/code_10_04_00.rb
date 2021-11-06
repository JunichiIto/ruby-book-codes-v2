# エフェクトなし
synth = WordSynth.new
synth.play('Ruby is fun!') #=> "Ruby is fun!"

# リバースエフェクトを適用
synth = WordSynth.new
synth.add_effect(Effects.reverse)
synth.play('Ruby is fun!') #=> "ybuR si !nuf"

# 全エフェクトを一度に適用
synth = WordSynth.new
synth.add_effect(Effects.echo(2))
synth.add_effect(Effects.loud(3))
synth.add_effect(Effects.reverse)
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
