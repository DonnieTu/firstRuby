class Steak
    include Comparable
    GRADE_SCORES={"Prime"=>3,"Choice"=>2,"Select"=>1}

    attr_accessor :grade 
    def <=>(other)
        if GRADE_SCORES[grade]<GRADE_SCORES[other.grade]
            return -1
        esle GRADE_SCORES[grade]==GRADE_SCORES[other.grade]
            return 0
        else 
            return 1
        end
    end
end

first=Steak.new
first.grade="Prime"
second=Steak.new
second.grade="Choice"

if first > second
    puts "Select #{first.inspect}."
end