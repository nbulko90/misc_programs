puts "Please enter a string: "
text = gets.chomp # Get user input and remove the newline character

words = text.split(" ") # Split the string into an array (space delimited)

frequencies = Hash.new(0) # Create frequencies hash, initializing each key to a value of 0 

words.each { |word| frequencies[word] += 1 } # Iterate through the words array word-by-word,
											 # mapping each word to a key in the frequencies 
											 # hash, incrementing each word by 1 when it is
											 # encountered

frequencies = frequencies.sort_by {|a, b| b } # Sort frequencies hash in ascending order of 
											  # word occurence (value)

frequencies.reverse! # Reverse the results of the above operation, sorting values by 
					 # descending order

frequencies.each { |word, frequency| puts word + ": " + frequency.to_s } # Output final
																		 # results