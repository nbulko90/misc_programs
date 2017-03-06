# Get user input and remove the newline character
puts "Please enter a string: "
text = gets.chomp 

# Split the string into an array (space delimited)
words = text.split(" ")

# Create frequencies hash, initializing each key to a value of 0 
frequencies = Hash.new(0) 

# Iterate through the words array word-by-word, mapping each word to a key in the frequencies
# hash, incrementing each word by 1 when it is encountered
words.each { |word| frequencies[word] += 1 }
											 
# Sort frequencies hash in ascending orer of word occurrence (value)					 
frequencies = frequencies.sort_by {|a, b| b } 
											  
# Reverse the results of the above operation, sorting values in descending order
frequencies.reverse!
					
# Output final results					 
frequencies.each { |word, frequency| puts word + ": " + frequency.to_s }
																		 