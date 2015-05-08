# Write your answer bellow
#
# Happy coding!!

#Person
class Person
  attr_accessor :first_name, :last_name, :full_name
end

#Player
class Player < Person
  def initialize(health = 20, strength = 5, alive = true)
    @health = health
    @strength = strength
    @alive = alive
  end

  attr_accessor :health, :strength, :alive

  def take_damage(attack_strength)
    @health = @health - attack_strength

    if @health <= 0
      @alive = false
      puts "#{self.class}, watch out! You're about to die!"
    end
  end

  def attack(player)
    @attackerstrength = self.strength
    player.take_damage(@attackerstrength)
    puts "#{self.class} Attacks! #{player.class} Health: #{player.health}, Alive: #{player.alive}"
  end
end

#Knight
class Knight < Player
  def initialize(health = 50, strength = 7)
    super
    @health = health
    @strength = strength
  end
end

#Wizard
class Wizard < Player
  def initialize(health = 20, strength = 75)
    super
    @health = health
    @strength = strength
  end
end


dimple = Wizard.new
fer = Knight.new

#Knight Attacks Wizard
fer.attack(dimple)
fer.attack(dimple)

#Wizard Attacks Wizard
dimple.attack(fer)