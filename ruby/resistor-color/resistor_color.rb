# frozen_string_literal: true

module ResistorColor
  COLORS = %w[black brown red orange yellow green blue violet grey white].freeze

  def self.color_code(color)
    COLORS.index(color)
  end

  def self.colors
    COLORS
  end
end
