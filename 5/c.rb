# ---------- COMMON ABILITIES ----------
module CombatAbilities
  def move
    puts "#{@name} moves forward"
  end

  def attack
    puts "#{@name} attacks!"
  end

  def defend
    puts "#{@name} defends!"
  end
end


# ---------- HERO SPECIAL POWER ----------
module Healing
  def heal
    puts "#{@name} uses healing power!"
  end
end


# ---------- VILLAIN SPECIAL POWER ----------
module Poison
  def poison
    puts "#{@name} uses poison attack!"
  end
end


# ---------- LEVEL UP SYSTEM ----------
module LevelUp
  def level_up
    @attack += 10
    @defense += 10
    puts "#{@name} leveled up! Attack=#{@attack} Defense=#{@defense}"
  end
end


# ---------- HERO CLASS ----------
class Hero
  include CombatAbilities
  include Healing
  include LevelUp

  def initialize(name)
    @name = name
    @attack = 50
    @defense = 40
  end
end


# ---------- VILLAIN CLASS ----------
class Villain
  include CombatAbilities
  include Poison
  include LevelUp

  def initialize(name)
    @name = name
    @attack = 45
    @defense = 35
  end
end


# ---------- MONSTER CLASS ----------
class Monster
  include CombatAbilities
  include LevelUp

  def initialize(name)
    @name = name
    @attack = 30
    @defense = 20
  end
end


# ---------- TEST PROGRAM ----------
hero = Hero.new("Arjun")
villain = Villain.new("DarkLord")
monster = Monster.new("Goblin")

puts "\n--- HERO ---"
hero.move
hero.attack
hero.defend
hero.heal
hero.level_up

puts "\n--- VILLAIN ---"
villain.move
villain.attack
villain.poison
villain.level_up

puts "\n--- MONSTER ---"
monster.move
monster.attack
monster.defend
monster.level_up