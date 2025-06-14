# frozen_string_literal: true

class SpaceAge
  def initialize(age)
    @age = age
  end

  def on_earth
    (@age / 31_557_600.0)
  end

  def on_venus
    (on_earth / 0.61519726)
  end

  def on_jupiter
    (on_earth / 11.862615)
  end

  def on_mars
    (on_earth / 0.61519726)
  end

  def on_mercury
    (on_earth / 0.2408467)
  end

  def on_neptune
    (on_earth / 164.79132)
  end

  def on_saturn
    (on_earth / 29.447498)
  end

  def on_uranus
    (on_earth / 84.016846)
  end

  def on_mars
    (on_earth / 1.8808158)
  end
end
