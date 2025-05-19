# frozen_string_literal: true

class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma, :hitpoints

  def self.modifier(constitution)
    ((constitution - 10) / 2.0).floor
  end

  def roll_dice
    rolls = Array.new(4) { rand(1..6) }
    rolls.sort.last(3).sum
  end

  def initialize
    @strength = roll_dice
    @dexterity = roll_dice
    @constitution = roll_dice
    @intelligence = roll_dice
    @wisdom = roll_dice
    @charisma = roll_dice
    @constitution_modifier = DndCharacter.modifier(@constitution)
    @hitpoints = 10 + @constitution_modifier
  end
end
