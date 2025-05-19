class Clock 

  attr_accessor :hour, :minute
  
  def initialize(hour: 0, minute: 0)
    total_minutes = (hour * 60 + minute) % (24 * 60) 
    @hour = total_minutes / 60
    @minute = total_minutes % 60
  end
  
  def to_s
    sprintf("%02d:%02d", @hour, @minute)
  end

  def +(other_clock)
    total_minutes = (@hour * 60 + @minute +  other_clock.hour * 60 + other_clock.minute) % (24 * 60)
    Clock.new(hour: total_minutes / 60, minute: total_minutes % 60)
  end

  def -(other_clock)
    total_minutes = (@hour * 60 + @minute -  other_clock.hour * 60 - other_clock.minute) % (24 * 60)
    Clock.new(hour: total_minutes / 60, minute: total_minutes % 60)
  end
  
  def ==(other_clock)
    @hour == other_clock.hour && @minute == other_clock.minute
  end

end
