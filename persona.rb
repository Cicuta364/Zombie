class Persona

	attr_reader :name, :x, :y
	attr_accessor :armas

	def initialize(name = nil, posx = nil, posy = nil)
		@name = name || 'Rick'
		@x = posx || rand(10)
		@y = posy || rand(10)
 		@dead = false
 		@armas = 0
	end

	def run
		@x += rand(-2..2) unless (@x > 10 || @x > 1)
		@y += rand(-2..2) unless (@y > 10 || @y > 1)
		#sapear(@x, @y)
	end

	def to_s
		"#{@name} esta en la posicion #{@x}, #{@y}"

	end

	 def grito
    'NOOOOOOOOOO!!!'
  	end


	def danger? zombies
		#begin
		#	fail StandarError, 'Zombies is empty' if zombies.empty?
		zombies.each do |z|
			if z.x.between?((@x - 3), (@x + 3)) &&  z.y.between?((@y - 3), (@y + 3))
				puts "Peligro #{@name} el zombie #{z.name} esta cerca!!!"
			else
				puts "Hey #{@name}, todo esta tranquilo por aqui"
			#	end
			end
		#rescue Exception => e
		#	puts e.message
		#	puts e.backtrace
		end
	end

	def zombified? zombies
		zombies.each do |z|
			if z.x.between?((@x - 1), (@x + 1)) &&  z.y.between?((@y - 1), (@y + 1))
				puts "#{@name}: #{grito}, #{z.name}: #{z.habla}"
				return true
			end
			false
		end
	end

	def buscarArmas armas
		armas.each do |a|
			if a.x == @x && a.y == @y
				puts = "Tomaste el #{a.name}"
				@armas = 1
				tipo= armas.delete(a)
			end
		end
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


