# Write your answer bellow
#
# Happy coding!!

class Person
	attr_accessor :first_name, :last_name, :full_name
	def full_name
		@full_name = @first_name + " " + @last_name
	end
end

class Player < Person
	attr_accessor :health, :strength, :alive
	def initialize(health=20, strength=5, alive=true)
		@health = health
		@strength = strength
		@alive = alive
	end

	def take_damage(attack_strength)
		@attack_strength = attack_strength
		@health = @health - @attack_strength
		if @health <= 0
			@alive = false
			puts "#{full_name} is dead"
		end
	end

	def attack(player)
		@strength = self.strength
		puts player.take_damage(@strength)
	end
end

class Knight < Player
	def initialize(health=50, strength=7)
		@health = health
		@strength = strength
	end
end

class Wizard < Player
	def initialize(health=20, strength=75)
		@strength = strength
		@health = health
	end
end

#================================================

harry = Wizard.new
harry.first_name = "Harry"
harry.last_name  = "Newton"

fer = Knight.new
fer.first_name = "Fer"
fer.last_name  = "Nando"

fer.attack(harry)
puts harry.health
puts fer.health
