module GameLogic
	def add(args="10")
		puts "we shall be adding some numbers now"
		start_sequence

		x=args.to_i
		while x.to_i > 0
			integer1, integer2 = two_random_numbers
			puts "\##{integer1} + #{integer2} = ?"
			user_response = gets.chomp.to_i

			until user_response == integer1 + integer2
				puts "incorrect"
				puts "\##{integer1} + #{integer2} = ?"
				user_response = gets.chomp.to_i
			end

			puts "correct"

			x -= 1
		end

	end

	def two_random_numbers
		return rand(100),rand(100)
	end

	def start_sequence
		x=4
		puts x-= 1 while x > 1
		puts "Go!"
	end
end
