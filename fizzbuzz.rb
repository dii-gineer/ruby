
number= 1

while (number <101) do

    #if multiple of both puts fizzbuzz 
    if (number%3 ==0) && (number %5 ==0)then 
        puts "fizzbuzz"
        #if number multiple of 3 puts fizz
    elsif(number%3 ==0) then
        puts "fizz"
        #if number multiple of 5 puts buzz
    elsif(number%5==0) then
        puts "buzz"
    else
        puts number 
    end 

    number +=1
end 




