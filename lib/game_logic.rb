module GameLogic
	# def add(args="10")
	# 	start_sequence
    #
	# 	x=args.to_i
	# 	while x > 0
	# 		integer1, integer2 = two_random_numbers
	# 		puts "\##{integer1} + #{integer2} = ?"
	# 		print ">Answer: "
	# 		user_response = gets.chomp.to_i
    #
	# 		until user_response == integer1 + integer2
	# 			puts "incorrect"
	# 			puts "\##{integer1} + #{integer2} = ?"
	# 			print ">Answer: "
	# 			user_response = gets.chomp.to_i
	# 		end
	# 		puts "correct"
	# 		x -= 1
	# 	end
	# end

	def basic_maths(operation,number_of_questions)
		start_sequence
		x = number_of_questions.to_i
		while x > 0
			integer1, integer2 = two_random_numbers
			result, sign = get_result(operation,integer1,integer2)
			puts "\##{integer1} #{sign} #{integer2} = ?"
			print ">Answer: "
			user_response = gets.chomp.to_i

			until user_response == result
				puts "incorrect"
				puts "\##{integer1} #{sign} #{integer2} = ?"
				print ">Answer: "
				user_response = gets.chomp.to_i
			end
			puts "correct"
			x -= 1
		end
		# conclusion(operation)
	end

	#calculates the result of either adding, subtracting, multiplying or dividing
	#two integers and returns the result and the symbol/sign of the operation
	def get_result(operation,integer1,integer2)
		result = 0
		sign =''
		case operation
		when 'add'
			result = integer1 + integer2
			sign = '+'
		when 'subtract'
			result = integer1 - integer2
			sign = '-'
		when 'multiply'
			result = integer1 * integer2
			sign = 'x'
		when 'divide'
			result = integer1 / integer2
			sign = '/'
		else
			puts "Operation Error: unknown operation is being requested"
		end
		return result,sign
	end

	def two_random_numbers
		return rand(100),(rand(100)+1)
	end

	def start_sequence
		x=4
		puts x-= 1 while x > 1
		puts "Begin!"
	end

	# def conclusion(operation)
	# 	return "\n\n Addition exercise completed \n" if operation == 'add'
	# end
end
