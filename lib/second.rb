
module Baseball
end

class Baseball::Second
  def initialize(player, uniform_number)
    @player = player
    @uniform_number = uniform_number
  end
end

module Clock
  class Second
    def initialize(digit)
      @digit = digit
    end
  end
end
