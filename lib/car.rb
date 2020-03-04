#require 'car/version'

module Car
  class MyCar
    attr_accessor :color, :current_speed
    attr_reader :year

    def initialize(year, color, model)
      @year = year
      @color = color
      @model = model
      @current_speed = 0
    end

    # speed_up verzija 1
    def speed_up
      self.current_speed += 10
    end
    # speed_up verzija 2
    # def speed_up(speed)
    #   self.current_speed += speed
    # end

  end
end
