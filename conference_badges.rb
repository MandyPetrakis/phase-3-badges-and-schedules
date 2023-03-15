def badge_maker name
    "Hello, my name is #{name}."
end 

def batch_badge_creator names 
   array = names.map{ |name| badge_maker(name) }
   array
end

def assign_rooms speakers
   list =  speakers.map{ |speaker|  "Hello, #{speaker}! You'll be assigned to room #{speakers.index(speaker)+1}!"
}
    list
end

def printer list
 batch_badge_creator(list).each{ |badge| puts badge}
  assign_rooms(list).each{|room| puts room}
end