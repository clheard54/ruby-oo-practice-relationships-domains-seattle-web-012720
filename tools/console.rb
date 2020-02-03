require_relative "../config/environment.rb"
# require_relative "../apps/models/actor"
# require_relative "../apps/models/character"
# require_relative "../apps/models/show"
# require_relative "../apps/models/movie"

def reload
  load "config/environment.rb"
end

meryl = Actor.new("Meryl Streep")
alison = Actor.new("Alison Janney")
reese = Actor.new("Reese Witherspoon")
martin = Actor.new("Martin Sheen")

cj = Character.new("CJ", alison)
bartlett = Character.new("Jed", martin)
clarissa = Character.new("Clarissa", meryl)

west_wing = Show.new("The West Wing")

the_hours = Movie.new("The Hours")
west_wing = Movie.new("The West Wing")

binding.pry
puts 3
