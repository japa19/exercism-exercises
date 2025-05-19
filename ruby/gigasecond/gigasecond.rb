# frozen_string_literal: true

class Gigasecond
  GIGASECOND = 1_000_000_000

  def self.from(time)
    @time = time + GIGASECOND
  end
end
