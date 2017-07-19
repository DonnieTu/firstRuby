lines={}
File.open("vote.txt") do |file|
    lines=file.readlines
end

votes=Hash.new(0)
lines.each do |line|
    line.upcase!.chomp!
    votes[line]+=1    
end

votes.each do |vote, ticket|
    puts "#{vote}: #{ticket}"
end


votes.each do |vote|
    puts "#{vote[0]}: #{vote[1]}"
end

class Candidate
    attr_accessor :name,:age,:birthplace
    def initialize(name,age:,birthplace:nil)
        self.name=name
        self.age=age
        self.birthplace=birthplace
    end
end

c=Candidate.new("Donnie Tu",age:40,birthplace:"Nanchang")
d=Candidate.new("Shirley Lian", age:40)
p c
p d

