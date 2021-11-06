2 <=> 1     #=> 1
2 <=> 2     #=> 0
1 <=> 2     #=> -1
2 <=> 'abc' #=> nil

'xyz' <=> 'abc' #=> 1
'abc' <=> 'abc' #=> 0
'abc' <=> 'xyz' #=> -1
'abc' <=> 123   #=> nil

# ----------------------------------------

2 > 1  #=> true
2 <= 1 #=> false
2 == 1 #=> false

'abc' > 'xyz'  #=> false
'abc' <= 'xyz' #=> true
'abc' == 'xyz' #=> false

# ----------------------------------------

class Tempo
  include Comparable

  attr_reader :bpm

  # bpmはBeats Per Minuteの略で音楽の速さを表す単位
  def initialize(bpm)
    @bpm = bpm
  end

  # <=>はComparableモジュールで使われる演算子（メソッド）
  def <=>(other)
    # otherがTempoであればbpm同士を<=>で比較した結果を返す
    # それ以外は比較できないのでnilを返す
    other.is_a?(Tempo) ? bpm <=> other.bpm : nil
  end

  # irb等で結果を見やすくするためにinspectメソッドをオーバーライド
  def inspect
    "#{bpm}bpm"
  end
end

# ----------------------------------------

t_120 = Tempo.new(120) #=> 120bpm
t_180 = Tempo.new(180) #=> 180bpm

t_120 > t_180   #=> false
t_120 <= t_180  #=> true
t_120 == t_180  #=> false

# ----------------------------------------

tempos = [Tempo.new(180), Tempo.new(60), Tempo.new(120)]
# sortメソッドの内部では並び替えの際に<=>演算子が使われる
tempos.sort #=> [60bpm, 120bpm, 180bpm]
