module Friendly
    def method_one
        puts "hello from Friendly"
    end
end

class MyClass
    include Friendly
end

my_object=MyClass.new
my_object.method_one


class Clip
    def play
        puts "Playing #{object_id}..."
    end
end

module AcceptsComments
    #attr_reader :comments
    
    def comments
        @comments=@comments||[]
    end
    
    def add_comment(comment)
        comments<<comment
    end
end

class Video <Clip
    include AcceptsComments
    attr_accessor :resolution
end

video=Video.new
video.add_comment "Cool slow motion effect!"
video.add_comment "good"

p video.comments