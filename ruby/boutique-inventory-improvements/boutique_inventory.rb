# frozen_string_literal: true

require 'ostruct'

class BoutiqueInventory
  attr_reader :items

  def initialize(items)
    @items = items.map { |item| OpenStruct.new(item) }
  end

  def item_names
    @items.map(&:name).sort
  end

  def total_stock
    @items.sum { |item| item.quantity_by_size.values.sum }
  end

  def cheap
    @items.select { |item| item.price < 30.00 }
  end

  def out_of_stock
    @items.select { |item| item.quantity_by_size.values.sum.zero? }
  end
end
