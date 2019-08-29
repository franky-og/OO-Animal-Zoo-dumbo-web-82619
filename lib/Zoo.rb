class Zoo
attr_accessor :name, :location
@@all = []

    def initialize(location, name)
    @location = location
    @name = name
    @@all << self
    @animals = []
    end

    def animal_birth(species, weight, nickname)
        @animals << Animal.new(species, weight, nickname, self)
    end

    def location
        @location
    end

    def name
        @name
    end

    def animals
        Animal.all.select do |animal|
            animal.zoo == self
        end
    end
    def self.all
        return @@all
    end

    def animal_species
        
        species_list = []
        animals.map{|animal| species_list << animal.species}
        species_list.uniq!

    end

    def self.find_by_location(location)
        self.all.select do |location| zoo.location = location
        end
    end

    def self.find_by_species(species)

        @animals.select do |animal| zoo.animals == species
        end

    end
    
 
end
