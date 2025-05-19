class ResistorColorTrio
  
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def initialize(colors)
    @colors = colors
  end

  def label
    prefix = ""
    ohm = @colors.take(2).map { |color| COLORS.index(color) }.join.to_i * 10 ** COLORS.index(@colors.last).to_i
    if (ohm % 1000).zero? then
       ohm /= 1000
       prefix = "kilo"
    end
    "Resistor value: #{ohm} #{prefix}ohms"
  end

end
