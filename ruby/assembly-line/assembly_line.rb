# frozen_string_literal: true

class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when 1..4 then success = 1.0
    when 5..8 then success = 0.9
    when 9 then success = 0.8
    when 10 then success = 0.77
    end
    success * 221 * @speed
  end

  def working_items_per_minute
    (production_rate_per_hour / 60).to_i
  end
end
