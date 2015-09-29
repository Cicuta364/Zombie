require_relative 'persona.rb'
require_relative 'zombies.rb'
require_relative 'perro.rb'
require_relative 'armas.rb'

personas = []
10.times do |p|
	personas << Persona.new("Persona #{p}")
end

zombies = []
1.times do |z|
	zombies << Zombie.new("Zombie #{z}")
end

perro = []
5.times do |p|
	perro << Perro.new("Perro #{p}")
end

armas = []
10.times do |a|
	armas << Armas.new("Estoque #{p}")
end

puts ''
puts personas.count
puts zombies.count
puts perro.count
puts armas.count


while personas.count > 0 && zombies.count > 0 do

	zombies.each(&:walk)
	personas.each(&:run)
	perro.each(&:walk)
	personas.each_with_index do |p, i|
		p.danger? zombies
		p.buscarArmas armas
		p.sablazo zombies
		if p.zombified? zombies
			zombies << Zombie.new("#{p.name}")
			personas[i] = nil
		end
	end
	perro.each do |d|
			zombies = d.zombidead zombies
		end
		personas.compact!
end

puts personas.count
puts zombies.count
puts perro.count
puts armas.count