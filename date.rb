require "date"

Date.new(2017, 9, 7)
# => <Date: 2015-01-01 ((2457024j,0s,0n),+0s,2299161j)>
Date.parse('July 4th, 2017')
# => 2017-07-04
Date.strptime("It's 2017, everyone!", "It's %Y, everyone!")
# => 2017-01-01
Date.today
# => 2017-09-07
date = Date.today
date >> 1
# will add 1 month to the date
date << 1
# will subtract 1 month from the date
