class Zombie

	attr_reader :name, :x, :y

	def initialize(name = nil, posx = nil, posy = nil)
		@name = name || 'Come cerebro'
		@x = posx || rand(10)
		@y = posy || rand(10)
	end

	def walk
		@x += rand(-1..1) unless @x > 10 || @x > 1
		@y += rand(-1..1) unless @y > 10 || @y > 1
	end

	def to_s
		puts "El zombie #{@name} esta en la posicion #{@x}, #{@y}"
	end

	def habla
		'Ceeeeereeeebroooooooo!!!!'
	end


end