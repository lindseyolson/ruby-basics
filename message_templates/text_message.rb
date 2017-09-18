require './greeting'
require './guest'

class TextMessage
  attr_accessor :template, :guest

  def initialize(guest, template)
    @guest = guest
    @template = template
  end

  def replace_variables
    guest.print_guest('first_last')
    @template.gsub('<GUEST>', guest.print_guest('first')).gsub('<NUMBER>', guest.print_guest('room_number'))
    # .gsub('<HOTEL>', @hotel)
  end

  def greeting_based_on_time_of_day
    t = Time.now.hour
    time = { (1..11)=>"Good Morning!", (12..17)=>"Good Afternoon!", (18..24)=>"Good Evening!"}
    time.select { |key, value| key.include?(t) }.values.join
  end

  def greeting
    "#{greeting_based_on_time_of_day} #{replace_variables}"
  end




end
