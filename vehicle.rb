class Car
    @classname="Car"
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
        print "turn on #{light} light"
    end


    def mileage(mile,gas) 
        if(gas==0)
            return 0.0
        end
        mile/gas
    end
end