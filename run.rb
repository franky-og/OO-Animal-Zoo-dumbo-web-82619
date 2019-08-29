require_relative "lib/Animal.rb"
require_relative "lib/Zoo.rb"
require 'pry'


zoo1 = Zoo.new("Bronx", "Bronx Zoo")
zoo2 = Zoo.new("Brooklyn", "Brooklyn Zoo")

arr = [zoo1, zoo2]

arr.each{|zoo| puts zoo.name}