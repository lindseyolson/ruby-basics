require './greeting'
require './guest'
require './hotel'

class TextMessage
  attr_accessor :template, :guest, :hotel

  def initialize(guest, hotel, template)
    @guest = guest
    @template = template
    @hotel = hotel
  end

  def replace_variables
    guest.print_guest('first_last')
    @template.gsub('<GUEST>', guest.print_guest('first'))
    .gsub('<NUMBER>', guest.print_guest('room_number'))
    .gsub('<GREETING>', greeting_based_on_time_of_day)
    .gsub('<HOTEL>', hotel.print_hotel('company_name'))
  end

  def greeting_based_on_time_of_day
    t = Time.now.hour
    time = { (1..11)=>"Good Morning!", (12..17)=>"Good Afternoon!", (18..24)=>"Good Evening!"}
    time.select { |key, value| key.include?(t) }.values.join
  end

  def greeting
    "#{replace_variables}"
  end

end
