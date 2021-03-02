# Write your code here.

def badge_maker(name)
   return "Hello, my name is #{name}."
end

def batch_badge_creator(speakers)
    speaker = []
    speakers.each{|name| speaker << badge_maker(name) }
    return speaker
end

def assign_rooms(speakers)
    speaker = []
    speakers.each_with_index do|name,index|
        speaker << "Hello, #{name}! You'll be assigned to room #{index+1}!"
    end
    return speaker
end

def printer(speakers)
   batch_badge_creator(speakers).each {|name|puts name} 
   assign_rooms(speakers).each {|room| puts room}
end
