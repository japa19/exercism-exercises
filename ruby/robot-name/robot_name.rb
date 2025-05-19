# frozen_string_literal: true

class Robot
  attr_reader :name

  @@names = []

  def self.forget
    @@used_names = []
  end

  def initialize
    reset
  end

  def reset
    @@used_names.delete(@name)
    @name = new_name
    @@used_names << @name
  end

  private

  def new_name
    loop do
      Kernel.srand
      name = "#{('A'..'Z').to_a.sample(2).join}#{rand(100..999)}"
      return name unless @@used_names.include?(name)
    end
  end
end
