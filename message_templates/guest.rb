class Guest
  attr_accessor :id, :firstName, :lastName, :reservation

    def initialize(id, firstName, lastName, reservation)
      @id = id
      @firstName = firstName
      @lastName = lastName
      @reservation = reservation
    end

    def id
      @id
    end

    def print_guest(format)
      case format
      when 'list_with_numbers'
        id.to_s + ": " + firstName + " " + lastName
      when 'first_last'
        firstName + " " + lastName
      when 'first'
        firstName
      when 'room_number'
        reservation.inspect
      end
    end



end
