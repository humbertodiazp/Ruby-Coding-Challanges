class MyCar
    attr_accessor :year, :color, :make, :model, :speed

    def initialize( year, color, make, model, speed=0)
        @year = year 
        @color = color
        @model = model
        @speed = speed
    end
        # We need to use self.speed to let Ruby know that we are calling a method,
        # not the instance variable @speed. self.speed = speed and @speed = speed are different.
        # the former makes a method call to stuff= on the object, ] whereas the latter directly 
        # sets an instance variable.The former invokes a method which may be public (unless 
        # specifically declared private in the class), whereas the latter is always setting a 
        # private instance variable.
    def change_speed(x)
        self.speed = x 
        return self.speed
    end

    def shutt_off()
        return "Car is now off"
    end 

    def spray_paint(color)
        self.color = color 
        return "You car is now #{color}"
    end

    def color()
        return @color 
    end 
end 

my_whip = MyCar.new(2022, "White", "Toyota", "Camry" )

puts my_whip

puts my_whip.color 

puts my_whip.change_speed(20)

puts my_whip.spray_paint('orange')

puts my_whip.color
