require 'time'

class Greeting
  def self.convert_based_on_time_of_day
    t = Time.now.hour
    time = { (1..11)=>"Good Morning!", (12..17)=>"Good Afternoon!", (18..24)=>"Good Evening!"}
    puts time.select { |key, value| key.include?(t) }.values.join
  end
end

# puts TimeToGreeting.convert
