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
        @zoo = zoo.name

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
        @zoo
    end

    # Class #

    def self.all
        @@all
    end

    def self.find_by_species(species)

        self.all.select{|animal| animal.species == species}

    end
binding.pry
end

