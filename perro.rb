class Perro

	attr_reader :name, :x, :y

	def initialize(name = nil, posx = nil, posy = nil)
		@name = name || 'Perro'
		@x = posx || rand(10)
		@y = posy || rand(10)
	end

	def walk
		@x += rand(-3..3) unless (@x > 10 || @x > 1)
		@y += rand(-3..3) unless (@y > 10 || @y > 1)
	end

	def to_s
		'Wof wof'

	end

		def zombidead(zombies)
		zombies.each do |d|
			if d.x.between?((@x - 2), (@x + 2)) &&  d.y.between?((@y - 2), (@y + 2))
				puts "ha muerto un Zombie"
				zombies.delete(d)

			end
		end
	end
end

