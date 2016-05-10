class Car
	def initialize(noise, engine)
		@noise = noise
		@engine = engine
	end

	def start
		puts "The car goes: #{@noise}"
		puts "The engine goes: #{@engine.move_pistons}"
	end
end
