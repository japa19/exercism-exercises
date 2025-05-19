class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    @line.split(":")[1].strip
  end

  def log_level
    @line.split(":")[0].delete('[]').downcase
  end

  def reformat
    "#{message} (#{log_level})"
  end
end

p LogLineParser.new('[ERROR]: Invalid operation').message
# => "Invalid operation"
p LogLineParser.new("[WARNING]:  Disk almost full\r\n").message
# => "Disk almost full"
p LogLineParser.new('[ERROR]: Invalid operation').log_level
# => "error"
p LogLineParser.new('[INFO]: Operation completed').reformat
# => "Operation completed (info)"
