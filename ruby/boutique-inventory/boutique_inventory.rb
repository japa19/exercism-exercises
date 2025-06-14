# frozen_string_literal: true

class BoutiqueInventory
  def initialize(items)
    @items = items
  end

  def item_names
    @items.map do |item|
      item[:name]
    end.sort
  end

  def cheap
    @items.select { |item| item[:price] < 30.00 }
  end

  def out_of_stock
    @items.select { |item| item[:quantity_by_size].empty? }
  end

  def stock_for_item(name)
    @items.find { |item| item[:name] == name }&.dig(:quantity_by_size)
  end

  def total_stock
    @items.sum do |item|
      item[:quantity_by_size].values.sum
    end
  end

  private

  attr_reader :items
end
