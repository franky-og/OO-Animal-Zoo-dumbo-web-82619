require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


zoo1 = Zoo.new("Bronx", "Bronx Zoo")
zoo2 = Zoo.new("Brooklyn", "Brooklyn Zoo")

arr = [zoo1, zoo2]

arr.each{|zoo| puts zoo.location}
puts Zoo.all
zoo1.animal_birth("Spider", 255, "Peter")
zoo1.animal_birth("Spider", 1, "John")
zoo1.animal_birth("Turtle", 4, "Ben Franklin")
# found = []
# zoo1.find_by_species("Spider").each{|animal| found << animal.nickname}
# puts found
# puts zoo1.animal_nicknames
# puts Zoo.find_by_location('Bronx')

#  phrases = []
#  zoo1.animals.each do |animal|
# puts "#{animal.nickname} the #{animal.species} weighs #{animal.weight} unit!"

puts 
