require 'pry'
class Animal

    ##########################################
    ############# INITIALIZATION #############
    ##########################################

    attr_reader :species, :nickname, :zoo
    attr_accessor :weight

    @@all = []

    def initialize(species, weight, nickname, zoo)

        # Instance Variables #
        @species = species
        @weight = weight
        @nickname = nickname
        @zoo = zoo

        # Class Variables #
        @@all << self

    end

    ##########################################
    ################ METHODS #################
    ##########################################

    # Instance #

    def nickname 
        @nickname
    end

    def weight 
        @weight
    end

    def species
        @species
    end

    def zoo
        
    end

    # Class #

    def self.all
        @@all
    end

    def self.find_by_species(species)

        self.all.select{|animal| animal.species == species}

    end
#binding.pry
end

animal1 = Animal.new("Spider", 1, "Ferdinand")
animal2 = Animal.new("Porcupine", 5, "Maurice")
animal3 = Animal.new("Porcupine", 6.5, "Bernard")
porcs = Animal.find_by_species("Porcupine")
porcs.each{|animal| puts animal.nickname}