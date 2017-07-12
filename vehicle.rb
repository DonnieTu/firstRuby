class Vehicle
 #   @classname="Vehicle"
    attr_accessor :name
    def name=(name)
        if name==''
             raise "name cannot be null"
        end
        @name=name
    end
    def name
        @name 
    end
    def speedup 
        print "speed up"
    end

    def use_light(light="low")
        puts "#{@name}: turn on #{light} light"
    end

    attr_accessor :odometer
    attr_accessor :gas_used

    def steer 
        puts "Turn front 2 wheels."
    end

    def mileage
        if(@gas_used==0)
            return 0.0
        end
        @odometer/@gas_used
    end

    def typename 
        return @classname
    end 
end

class Car < Vehicle 
#    @classname="Car"

end

class Truck < Vehicle
    attr_accessor :cargo

    def load_bed(contents)
        puts "Securing #{contents} in the trunk bed."
        @cargo=contents
    end
end

class Motorcycle
    def steer
        puts "Turn front wheel"
    end
end


car=Car.new
car.name="QQ"
car.use_light
car.odometer=100
car.gas_used=6.5
puts "#{car.name}'s mileage is #{car.mileage}"
#puts "class type is #{car.typename}"

truck=Truck.new
truck.load_bed("200 pieces of brick")

motorcycle=Motorcycle.new
motorcycle.steer