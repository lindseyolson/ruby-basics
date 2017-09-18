require './text_message'

class Template
  attr_accessor :id, :message

  def initialize(id, message)
    @id = id
    @message = message
  end

  def print_templates(guest)
    
    text = TextMessage.new(guest, message)
    text.greeting
  end

end


# class Template
#   attr_accessor :id, :message
#
#   def initialize(id, message)
#     @id = id
#     @message = message
#   end
#
#   def print_templates(guest, hotel)
#
#   end
#
# end
