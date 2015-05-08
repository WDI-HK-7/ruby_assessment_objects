# Write your answer bellow
#
# Happy coding!!

# ------------------------------ Person

class Person

	def initialize(first_name, last_name)
		
		@first_name = first_name
		@last_name = last_name
		@full_name = first_name + " " + last_name
		
	end
	
	attr_accessor :first_name, :last_name, :full_name
	
end

# ------------------------------ Player

class Player < Person
	
	def initialize(first_name, last_name)
		
		super(first_name, last_name)
		@health = 20
		@strength = 5
		@alive = true
		
	end
	
	def take_damage(attack_strength)
		
		@health -= attack_strength
		
		@health <= 0? @alive = false : @alive = true 
		
	end
	
	def attack(player)
		
		if self.alive?
			player.take_damage(@strength)
		else
			puts "#{self.first_name} can't attack. He/She is dead!"
		end
		
	end
	
	attr_accessor :health, :strength, :alive
	
	def alive?
		@alive
	end
	
end

# ------------------------------ Knight

class Knight < Player
	
	def initialize(first_name, last_name)
		
		super(first_name, last_name)
		@health = 50
		@strength = 7
		
	end
		
end

# ------------------------------ Wizard

class Wizard < Player
	
	def initialize(first_name, last_name)
		
		super(first_name, last_name)
		@health = 20
		@strength = 75
		
	end
		
end

# ------------------------------ Game Time

dom = Wizard.new("Albus", "Dumbledore")
xiao = Knight.new("Aragorn", "Son of Arathorn")

xiao.attack(dom)
puts "#{xiao.full_name} attacked #{dom.full_name}!"
puts "#{dom.first_name}'s health is #{dom.health}"
dom.attack(xiao)
puts "#{dom.full_name} attacked #{xiao.full_name}!"
puts "#{xiao.first_name}'s health is #{xiao.health}"


puts xiao.alive? ? "#{xiao.first_name} is still alive!" : "#{xiao.first_name} is dead!"


xiao.attack(dom)
puts "#{dom.first_name}'s health is #{dom.health}"
puts dom.alive?