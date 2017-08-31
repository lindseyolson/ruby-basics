def get_name
  print "Enter your name: "
  name = gets.chomp
  yield name #yielding with a variable, so the variable is being sent with
  name #if name is returned on last line, then you can use this variable in line #12
end

#calling the method with a block
my_name = get_name do |your_name| #must assign the block argument a variable, with pipes, in order to use the variable within the block
  puts "That's a cool name, #{your_name}!"
end

puts "my_name: #{my_name}"
