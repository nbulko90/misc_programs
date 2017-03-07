# This program accepts an array of variable length
# and sorts it in ascending order using the bubble sort algorithm

def bubble_sort(myArray)
	# Iterate through each array index (outer)
  myArray.each_index do |i| 
  	# Iterate through each array index (inner)
    (i+1..myArray.length-1).each do |n|
    	# If the left value is greater than the right value...
      if myArray[i] > myArray[n]
      	# ...Swap values 
      	myArray[i], myArray[n] = myArray[n], myArray[i]
      end
  end
end
  puts myArray
end

myArray = []
input = nil

while true
	puts "Please enter an array value. Press enter with no input when done: "
	input = gets.chomp
	break if input.empty?
	myArray << input.to_i
end

puts "\n"
puts "Sorted output: "
bubble_sort(myArray)
