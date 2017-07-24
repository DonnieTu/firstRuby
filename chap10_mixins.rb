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

class WordSplitter
    attr_accessor :string
    def each 
        string.split(" ").each do |word|
            yield word
        end
    end

    include Enumerable
end

w=WordSplitter.new
w.string="one two three"
p w.find_all {|word| word.include?("o")}
p w.find_all {|word| word.include?("one")}
p w.map {|word| word.capitalize}
p w.find {|word| word.include?("o")}
p w.group_by {|word| word.include?("o")}
p w.max_by {|word| word.length}