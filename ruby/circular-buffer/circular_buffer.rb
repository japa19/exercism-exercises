class CircularBuffer < Array
  class BufferEmptyException < ArgumentError; end
  class BufferFullException < ArgumentError; end

  def initialize(size)
    super()
    @size = size
  end

  def read
    raise BufferEmptyException if count.zero?

    shift
  end

  def write(data)
    raise BufferFullException if count == @size

    push data
  end

  def write!(data)
    read if count == @size
    write data
  end
end
