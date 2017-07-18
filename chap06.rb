def find_adjective(string)
    words=string.split(/[ ,:\.]/)
    index=words.find_index("is")
    "'#{words[index+1].capitalize}'"
end


lines=[]
File.open "review.txt" do |file|
    lines=file.readlines
end

adjectives=lines.find_all {|line| line.include? "Truncated"}
    .reject {|line|line.include? "--"}
    .map {|line| find_adjective(line)}

puts adjectives 

