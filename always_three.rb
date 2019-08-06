def always_three(number)
   (((input_number+5)*2-4)/2 - input_number).to_s 
end

puts "Give me a number:"
input_number = gets.to_i

puts "Always " + always_three(input_number).to_s