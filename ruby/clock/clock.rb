# frozen_string_literal: true

class Clock
  attr_accessor :hour, :minute

  def initialize(hour: 0, minute: 0)
    total_minutes = (hour * 60 + minute) % (24 * 60)
    @hour = total_minutes / 60
    @minute = total_minutes % 60
  end

  def to_s
    format('%02d:%02d', @hour, @minute)
  end

  def +(other)
    total_minutes = (@hour * 60 + @minute + other.hour * 60 + other.minute) % (24 * 60)
    Clock.new(hour: total_minutes / 60, minute: total_minutes % 60)
  end

  def -(other)
    total_minutes = (@hour * 60 + @minute - other.hour * 60 - other.minute) % (24 * 60)
    Clock.new(hour: total_minutes / 60, minute: total_minutes % 60)
  end

  def ==(other)
    @hour == other.hour && @minute == other.minute
  end
end
