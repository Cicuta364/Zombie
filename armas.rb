class Armas

	attr_reader :name, :x, :y

	def initialize(name = nil, posx = nil, posy = nil)
		@name = name || 'La filosa'
		@x = posx || rand(10)
		@y = posy || rand(10)
	end

	def sablazo(zombies)
		zombies.each do |z|
			if z.x.between?((@x - 2), (@x + 2)) &&  z.y.between?((@y - 2), (@y + 2))
				puts "te raje el paño Zombie qlo"
				zombies.delete(z)
			end
		end
	end
end