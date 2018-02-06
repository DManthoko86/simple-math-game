module GameLogic

	def basic_maths(operation,number_of_questions)
		# start_sequence
		x = number_of_questions.to_i
		question_num = 1
		score = 0
		while x > 0
			integer1, integer2 = two_random_numbers
			result, sign = get_result(operation,integer1,integer2)
			puts "Question #{question_num}: #{integer1} #{sign} #{integer2} = ?"
			print ">Answer: "
			user_response = gets.chomp.to_i

			#the players score will only increase if they get the correct
			#answer on the first try
			score += 1 if user_response == result

			until user_response == result
				puts "Incorrect"
				puts "Question #{question_num}: #{integer1} #{sign} #{integer2} = ?"
				print ">Answer: "
				user_response = gets.chomp.to_i
			end
			puts "Correct"
			x -= 1
			question_num += 1
		end
		conclude_game(operation,score,number_of_questions)
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
			result = (((integer1 / integer2) * 100.0).floor) / 100.0
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
 		while x > 1
			puts x -= 1
			sleep(1)
		end
		puts "Begin!"
	end

	def conclude_game(operation,score,number_of_questions)
		actions = {'add' => 'addition', 'subtract' => 'subtraction',
			'multiply' => 'multiplication', 'divide' => 'division', 'times' => 'times tables', 'random' => 'random'}
		puts "\nYou have completed the #{actions[operation]} exercise!!\n"
		puts "Your final score is #{score}/#{number_of_questions} (#{(score/number_of_questions.to_f)*100}%)."
	end
end
