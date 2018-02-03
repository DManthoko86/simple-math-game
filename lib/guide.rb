class Guide
	# random number - rand(45)

	def launch
		introduction
		#action loop
		result = nil
		until result == :quit
			# => what do you want to do? (list, find, add, quit)
			action,args = get_action
			# => do that action
			result = do_action(action,args)
			# => repeat until user quits
		end
		conclusion

	end

	def introduction
		puts "\n\n <<< Welcome to Simple Maths >>>\n\n"
		puts "Improve your basic math with this simple application.\n\n"
	end

	def conclusion
		puts "\n<<< See you next time >>>"
	end
end
