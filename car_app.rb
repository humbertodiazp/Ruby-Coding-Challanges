class MyCar
    attr_accessor :year, :color, :make, :model, :speed

    def initialize( year, color, make, model, speed=0)
        @year = year 
        @color = color
        @model = model
        @speed = speed
    end

    def change_speed(speed)
        return speed += speed
    end

    def shutt_off()
        return "Car is now off"
    end 

    def spray_paint(color)
        self.color = color 
    end

    def color()
        return @color 
    end 
end 

my_whip = MyCar.new(2022, "White", "Toyota", "Camry" )

puts my_whip

puts my_whip.color 

puts my_whip.change_speed(20)