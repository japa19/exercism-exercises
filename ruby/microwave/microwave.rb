class Microwave
  def initialize(buttons)
    @buttons = buttons
  end

  def timer
    minutes = @buttons / 100 + (@buttons % 100) / 60
    remaining_seconds =  @buttons % 100 % 60
    format("%02d:%02d", minutes, remaining_seconds)
  end
end
