# Write your answer bellow
#
# Happy coding!!

class Person
  attr_accessor :first_name, :last_name, :full_name
end



class Player < Person
  @@attacker_strength

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
      puts "You're Dead!"
    end
  end

  def attack(player)
    @@attackerstrength = self.strength
    player.take_damage(@@attackerstrength)
  end
end



class Knight < Player
  def initialize(health = 50, strength = 7)
    super
    @health = health
    @strength = strength
  end
end



class Wizard < Player
  def initialize(health = 20, strength = 75)
    super
    @health = health
    @strength = strength
  end
end


dimple = Wizard.new
fer = Knight.new

puts "Initial Dimple: #{dimple.health}, #{dimple.strength}, #{dimple.alive}"
puts "Initial Fer: #{fer.health}, #{fer.strength}, #{fer.alive}"


#Wizard Attacks Knight
  puts "Dimple Attacks Fer"
  dimple.attack(fer)
  puts "Fer: #{fer.health}, #{fer.strength}, #{fer.alive}"

#Knight Attacks Wizard
  # puts "Fer Attacks Dimple"
  # fer.attack(dimple)
  # puts "Dimple: #{dimple.health}, #{dimple.strength}, #{dimple.alive}"
  #   fer.attack(dimple)
  # puts "Dimple: #{dimple.health}, #{dimple.strength}, #{dimple.alive}"
  #   fer.attack(dimple)
  # puts "Dimple: #{dimple.health}, #{dimple.strength}, #{dimple.alive}"
