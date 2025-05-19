# frozen_string_literal: true

class Lasagna
  def remaining_minutes_in_oven(actual_minutes_in_oven)
    EXPECTED_MINUTES_IN_OVEN - actual_minutes_in_oven
  end

  def preparation_time_in_minutes(layers)
    2 * layers
  end

  def total_time_in_minutes(number_of_layers:, actual_minutes_in_oven:)
    preparation_time_in_minutes(number_of_layers) + actual_minutes_in_oven
  end
end

lasagna = Lasagna.new
Lasagna::EXPECTED_MINUTES_IN_OVEN = 40
lasagna.remaining_minutes_in_oven(30)
lasagna.preparation_time_in_minutes(2)
lasagna.total_time_in_minutes(number_of_layers: 3, actual_minutes_in_oven: 20)
