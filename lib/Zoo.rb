class Zoo
attr_accessor :name, :location, :animals
@@all = []

    def initialize(location, name)
        @location = location
        @name = name
        @@all << self
        @animals = []
    end

    def self.animal_birth(species, weight, nickname)
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
        @animals.map{|animal| species_list << animal.species}
        species_list.uniq!

    end

    def self.find_by_location(location)
        search_zoos = []
        @@all.each do |place|
            if place.location == location
                search_zoos << place
            end
        end
        return search_zoos[0].name
    end

    def find_by_species(species)

        @animals.select do |animal| 
            animal.species == species
        end

    end

    def animal_nicknames
        
        nicknames_list = []
        @animals.map{|animal| nicknames_list << animal.nickname}
        nicknames_list

    end

    
 
end
