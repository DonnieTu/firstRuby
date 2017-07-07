class Dog
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
        puts "#{@name} says Bark!"
    end

    def report_age
        puts ("#{name} is #{@age} years old")
    end
end

dog=Dog.new
dog.name="Daisy"
dog.age=3
dog.report_age
dog.talk
dog.move("bed")