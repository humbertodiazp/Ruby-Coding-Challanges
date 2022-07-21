class MyCar
    attr_accessor :color
    attr_reader :year, :make

    def initialize(year, model, color )
        @year = year
        @model = model
        @color = color
        @current_speed = 0
      end
    
    def speed_up(number)
        @current_speed += number
        puts "You push the gas and accelerate #{number} mph."
    end

    def brake(number)
        @current_speed -= number
        puts "You push the brake and decelerate #{number} mph."
    end

    def current_speed
        puts "You are now going #{@current_speed} mph."
    end

    def shut_down
        @current_speed = 0
        puts "Let's park this bad boy!"
    end

    def spray_paint(color)
        self.color = color 
        return "You car is now #{color}"
    end

    def color()
        return @color 
    end 

    # Add a class method to your MyCar class that calculates 
    # the gas mileage of any car. Not just an instance object 

    def self.gas_mileage(gallons, miles)
        puts "#{miles/gallons} miles per gallon of gas"
    end

    def to_s
        "This is a brand new #{@year} #{@model} in #{@color}."
    end

end
  
my_whip = MyCar.new(2022, "Camry", "White")

puts my_whip

puts my_whip.color 

puts my_whip.speed_up(20)
puts my_whip.brake(10)
puts my_whip.current_speed

puts my_whip.spray_paint('orange')

puts my_whip.gas_mileage







#     def initialize( year, color, make, model)
#         @year = year 
#         @color = color
#         @model = model
#         @speed = 0
#     end
#         # We need to use self.speed to let Ruby know that we are calling a method,
#         # not the instance variable @speed. self.speed = speed and @speed = speed are different.
#         # the former makes a method call to stuff= on the object, ] whereas the latter directly 
#         # sets an instance variable.The former invokes a method which may be public (unless 
#         # specifically declared private in the class), whereas the latter is always setting a 
#         # private instance variable.
#     def change_speed(x)
#         self.speed = x 
#         return self.speed
#     end

#     def shutt_off()
#         return "Car is now off"
#     end 

#    
# end 


