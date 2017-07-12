class Animal
    attr_reader :name,:age
    def name=(value) 
        if value==''
            raise "Name cannot be null"
        end
        @name=value
    end

    def age=(value)
        if value<0
            raise "value of age isn't valid"
        end
        @age=value
    end

    def move(destiation)
        puts "#{@name} runs to #{destiation}" 
    end

    def talk
        puts "#{@name} talks!"
    end

    def report_age
        puts ("#{name} is #{@age} years old")
    end

    def to_s
        "the anmimal #{methods}"
    end
end

class Dog < Animal
    def talk
        puts "#{@name} says Bark!"
    end

end

class Armadillo <Animal
    def move (destination)
        puts "#{@name} unrolls!"
        super
    end
end

armadillo=Armadillo.new
armadillo.name="Daisy"
armadillo.age=3
armadillo.report_age
armadillo.talk
armadillo.move("bed")
#puts armadillo.to_s
puts armadillo.class