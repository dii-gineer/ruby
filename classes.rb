#definining classes
class User
    attr_accessor :name , :age
end
class Film < User
    attr_accessor :film
end 



#initializing an object by class
my_user = Film.new
my_user.name="Diana"
my_user.age= "27"
my_user.film="The Little Mermaid"

puts "My name is #{my_user.name}, I am #{my_user.age} years old and I wathched #{my_user.film} as a kid in 1996"
