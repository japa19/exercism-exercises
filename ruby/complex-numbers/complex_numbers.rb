class ComplexNumber
  attr_reader :real, :imaginary

  def initialize(real, imaginary = 0)
    @real = real
    @imaginary = imaginary
  end

  def ==(other)
    (@real == other.real) && (@imaginary == other.imaginary)
  end

  # (a + c) + (b + d) * i
  def +(other)
    ComplexNumber.new(@real + other.real, @imaginary + other.imaginary)
  end

  # (a - c) + (b - d) * i
  def -(other)
    ComplexNumber.new(@real - other.real, @imaginary - other.imaginary)
  end

  # (a * c - b * d) + (b * c + a * d) * i
  def *(other)
    real_part = (@real * other.real - @imaginary * other.imaginary)
    imag_part = (@imaginary * other.real + @real * other.imaginary)
    ComplexNumber.new(real_part, imag_part)
  end

  # (a * c + b * d) / (c^2 + d^2) + (b * c - a * d) / (c^2 + d^2) * i
  def /(other)
    denom = denominator(other).to_f
    real_part = (@real * other.real + @imaginary * other.imaginary) / denom
    imag_part = (@imaginary * other.real - @real * other.imaginary) / denom
    ComplexNumber.new(real_part, imag_part)
  end

  def abs
    Math.sqrt(@real**2 + @imaginary**2)
  end

  # e^a * (cos(b) + i * sin(b))
  def exp
    exp_real = Math.exp(@real)
    real_part = exp_real * Math.cos(@imaginary)
    imag_part = exp_real * Math.sin(@imaginary)
    ComplexNumber.new(real_part, imag_part.round)
  end

  #  a - b * i
  def conjugate
    ComplexNumber.new(@real, -@imaginary)
  end

  private

  def denominator(other)
    other.real**2 + other.imaginary**2
  end
end
