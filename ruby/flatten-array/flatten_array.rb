# frozen_string_literal: true

module FlattenArray
  def self.flatten(to_flatten)
    @to_flatten = to_flatten
    @to_flatten.flatten.compact
  end
end
