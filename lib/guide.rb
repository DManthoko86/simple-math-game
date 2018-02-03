class Guide
	# random number - rand(45)
	class Config
		@@actions = ['add','subtract','multiply','divide','times','random','quit']
		def self.actions; @@actions; end
	end

	def launch
		introduction
		result = nil
		until result == :quit
			# => what do you want to do? (add, subtract, multiply, divide, timestables, random)
			action,args = get_action
			# => do that action
			# => repeat until user quits
			result = do_action(action,args)
		end
		conclusion
	end

	def do_action(action, args=[])
		case action
		when 'add'
			puts "starting addition exercise"
			add(args[1])
		when 'subtract'
			puts "starting subtraction exercise"
		when 'multiply'
			puts "starting multiplication exercise"
		when 'divide'
			puts "starting division exercise"
		when 'times'
			puts "starting timestables exercise"
		when 'random'
			puts "starting random questions exercise"
		when 'quit'
			return :quit
		else
			puts "\nI don't understand that command"
		end
	end

	def add(args=10)
		puts "Inside add method"
		puts "#{args}"
	end

	def get_action
		action =nil;
		#Keep asking for user input until we get a valid action
		until Guide::Config.actions.include?(action)
			puts "Actions: " + Guide::Config.actions.join(", ") if action
			print ">"
			user_response = gets.chomp
			args = user_response.downcase.strip.split(' ')
			action = args.shift
		end
		return [action,args]
	end

	def introduction
		puts "\n\n <<< Welcome to Simple Maths >>>\n\n"
		puts "Improve your basic math with this simple application.\n\n"
	end

	def conclusion
		puts "\n<<< See you next time >>>"
	end
end
