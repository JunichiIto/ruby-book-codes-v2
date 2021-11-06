module Effects
  def self.reverse
    # Procオブジェクト（ラムダ）をメソッドの戻り値にする
    ->(words) do
      # スペースで分解 > 逆順に並び替え > スペースで連結
      words.split(' ').map(&:reverse).join(' ')
    end
  end
end
