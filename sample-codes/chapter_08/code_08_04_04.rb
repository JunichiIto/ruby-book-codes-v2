module Rainbowable
  def rainbow
    colored_chars = []
    to_s.each_char.with_index do |char, count|
      color = 31 + count % 6
      colored_chars << "\e[#{color}m#{char}"
    end
    colored_chars.join + "\e[0m"
  end
end

# ----------------------------------------

module Rainbowable
  def rainbow
    to_s.each_char.map.with_index do |char, count|
      color = 31 + count % 6
      "\e[#{color}m#{char}"
    end.join + "\e[0m"
  end
end
