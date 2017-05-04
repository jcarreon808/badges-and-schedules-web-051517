
def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
 attendees.collect do |names|
   badge_maker(names)
 end
end

def assign_rooms(attendees)
  attendees.each_index do |index|
    attendees[index]="Hello, #{attendees[index]}! You'll be assigned to room #{index+1}!"
  end
end

def printer(attendees)
  batch_badge_creator(attendees).each do |value|
    puts value
  end
  assign_rooms(attendees).each do |value|
    puts value
  end
end
