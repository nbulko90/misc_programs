# Solution to the famous "FizzBuzz" interview question.  This program prints
# all numbers from 1 through 100, including "Fizz" if the number is divisible
# by 3, "Buzz" if the number is divisible by 5, and "FizzBuzz" if the number
# is divisible by 3 and 5.

for i in 1..100
	if(i % 5 == 0) && (i % 3 == 0)	
		puts "#{i}: FizzBuzz"
	elsif i % 5 == 0
		puts "#{i}: Buzz"
	elsif i % 3 == 0 
		puts "#{i}: Fizz"
	else
		puts "#{i}: "
	end
end