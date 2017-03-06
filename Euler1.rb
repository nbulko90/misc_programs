# This program outputs all multiples of 3 or 5 up to 1000, then returns the sum
# total at the end

sum_total = 0

1000.times do |i|

	if i % 3 == 0 or i % 5 == 0
		puts i
		sum_total += i
	end
end

puts "Sum total: #{sum_total}"  