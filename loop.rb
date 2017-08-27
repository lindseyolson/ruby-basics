#-------------------------------------------#
#-CONDITIONAL LOOP: GUESS THE RANDOM NUMBER-#
random_number = Random.new.rand(5)

loop do
  print "Guess the number between 0 and 5 (e to exit): "
  answer = gets.chomp
  if answer == "e"
    puts "The number was #{random_number}."
    break
  else
    if answer.to_i == random_number
      puts "You guessed correctly!"
      break
    else
      puts "Try again."
    end
  end
end

#-------------------------------------------#
#------WHILE LOOP: ENTER A NUMBER > 10------#
loop do
  print "Enter a number great than 10 to exit: "
  answer = gets.chomp.to_i
  break if answer > 10
end

answer = ''
while answer != "n" do
  print "Do you want me to repeat this pointless loop again? (y/n) "
  answer = gets.chomp.downcase
end

#-------------------------------------------#
#---------WHILE LOOP: PRINT HELLO-----------#
def print_hello(number_of_times)
  i = 0
  while i < number_of_times do
    puts "hello"
    i += 1
  end
end

answer = 0
while answer < 5 do
  print "How many times do you want to print 'hello'? Enter a number greater than 5 to exit. "
  answer = gets.chomp.to_i
  print_hello(answer)
end

#-------------------------------------------#
#----------UNTIL LOOP: CONTINUE?------------#
answer = ''
until answer == "no" do
  print "Do you want this loop to continue? (y/n) "
  answer = gets.chomp
end

#-------------------------------------------#
#----------------FOR LOOP-------------------#
for item in 1..10 do
  puts "The current item is #{item}."
end

for item in ["Lindsey", "Marie", "Olson"] do
  puts "#{item}"
end
