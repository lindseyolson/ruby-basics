string = "Minneapolis"

string.each_char { |c| print "#{c}-"}
#M-i-n-n-e-a-p-o-l-i-s=> "Minneapolis"

string.each_char { |c| print "#{c}-"}.upcase
#M-i-n-n-e-a-p-o-l-i-s=> "MINNEAPOLIS"


string = "Minneapolis
          is a great
          city!"

string.each_line { |line| puts "* #{line}" }
# * Minneapolis
# * is a great
# * city!


5.downto(3) { |number| print number }
#543=> 5
