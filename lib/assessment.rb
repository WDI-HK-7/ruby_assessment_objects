class Person
	attr_accessor :first_name, :last_name, :full_name
end 

class Player < Person
	def initialize(health=20, strength=5, alive=true)
		@health = health
		@strength = strength
		@alive = alive
	end
	attr_accessor :health, :strength, :alive

	def take_damage(attack_strength)
		@health = @health - attack_strength
		if @health <= 0
			@alive = false
			puts "you are dead!"
		end
	end

	def attack(player)
		player.take_damage(@strength)
	end
end

class Knight < Player
	def initialize(health=50,strength=7)
		@health = health
		@strength = strength
	end
end

class Wizard < Player
	def initialize(health=20,strength=75)
		@health = health
		@strength = strength
	end
end

victoria = Wizard.new
victoriali = Knight.new


puts "victoria initial: #{victoria.strength}  #{victoria.health} #{victoria.alive}"
puts "victoriali initial: #{victoriali.strength}  #{victoriali.health} #{victoriali.alive}"

victoriali.attack(victoria)
victoriali.attack(victoria)
victoriali.attack(victoria)
puts "victoria after: #{victoria.strength}  #{victoria.health} #{victoria.alive}"
puts "victoriali after: #{victoriali.strength}  #{victoriali.health} #{victoriali.alive}"