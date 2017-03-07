#Caesar cipher (rotation encoding) program that is able to handle wrapping
#both ends of the alphabet

def caesar_cipher(string)
  
  # Array to hold the finished (encoded) string
  shiftedArray = [] 
  # Maps the characters in the string to an array of corresponding ASCII values
  charMap = string.chars.map(&:ord)

  shift = 1
  # Loop accounting for all possible encoded strings from input
  26.times do |shift|
  	# Add encoded characters to final array
    shiftedArray << charMap.map do |c|
      # Conditional to account for wrapping, then converting from ASCII back to alphabet
      ((c + shift) < 123 ? (c + shift) : (c + shift) - 26).chr
    # Reassemble shifted characters into string	
    end.join
  end

  # Print the encoded string
  shiftedArray
end

puts "Please enter a string to encode: "
string = gets.chomp

puts "\n"
puts "Output: "
puts caesar_cipher(string)