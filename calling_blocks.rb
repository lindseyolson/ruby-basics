def get_name(prompt, &block)
  print prompt + ": "
  name = gets.chomp
  print "Age: "
  age = gets.chomp
  yield name, age if block_given? #will not give error if there is no block given
  #2 ways to call the block: yield or line below
  #block.call(name) #if you are calling a block, you can specifically call out the block
  name #if name is returned on last line, then you can use this variable in line #13
end

#calling the method with a block
my_name = get_name("Enter your name") do |your_name, age| #must assign the block argument a variable, with pipes, in order to use the variable within the block
  puts "That's a cool name, #{your_name}! Age #{age}."
end

puts "my_name: #{my_name}"


#another way to write method above -> with if conditional surrounding entire method
def get_name(prompt, &block)
  if block_given?
    print prompt + ": "
    name = gets.chomp
    print "Age: "
    age = gets.chomp
    yield name, age
    name #if name is returned on last line, then you can use this variable in line #13
  else
    puts "No block given."
  end
end

#calling the method with a block
my_name = get_name("Enter your name") do |your_name, age| #must assign the block argument a variable, with pipes, in order to use the variable within the block
  puts "That's a cool name, #{your_name}! Age #{age}."
end

puts "my_name: #{my_name}"
