# Write your code here.


def badge_maker(speaker)
  return "Hello, my name is #{speaker}."
end

speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def batch_badge_creator(speakers)
  speakers.collect do |speaker|
    badge_maker(speaker)
  end
end

def assign_rooms(speakers)
  speakers.each_with_index.map {|speaker, index|
    "Hello, #{speaker}!  You'll be assigned to room #{index + 1}!"}
end

def printer(speaker)
  batch_badge_creator(speaker).each do |badge|
    puts badge
  end
  assign_rooms(speaker).each do |value|
    puts value
  end
end
