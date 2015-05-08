class Person
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    @full_name = "#{first_name} #{last_name}"
  end
  attr_accessor :first_name, :last_name, :full_name
end

class Player < Person
  def initialize(first_name, last_name)
    super(first_name, last_name)
    @health = 20 
    @strength = 5 
    @alive = true
  end
  attr_accessor :health, :strength, :alive
  def take_damage(attack_strength)
    @health = @health - attack_strength
    puts "#{self.class} #{@full_name} has #{@health} HP left."
    if @health <= 0
      @alive = false
      puts "#{@full_name} is very dead."
    end
  end

  def attack(player)
    puts "#{self.class} #{full_name} attacks #{player.class} #{player.full_name}"
    player.take_damage(@strength)
  end
end

class Knight < Player
  def initialize(first_name, last_name)
    super(first_name, last_name)
    @health = 50
    @strength = 7
    puts "Knight #{full_name} enters the arena, ready to fight."
  end
end

class Wizard < Player
  def initialize(first_name, last_name)
    super(first_name, last_name)
    @strength = 75
    puts "Wizard #{full_name} enters the arena, ready to make a spell."
  end
end

xiao = Knight.new("xiao","yang")
dom = Wizard.new("dom", "dunnet")

xiao.attack(dom)
dom.attack(xiao)