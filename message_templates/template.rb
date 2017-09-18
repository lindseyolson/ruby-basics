require './text_message'

class Template
  attr_accessor :id, :message

  def initialize(id, message)
    @id = id
    @message = message
  end

  def id
    @id
  end

  def print_templates(guest, hotel)
    text = TextMessage.new(guest, hotel, message)
    id.to_s + ": " + text.greeting
  end

end
