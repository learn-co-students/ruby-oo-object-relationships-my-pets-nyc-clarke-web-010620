class Owner
  def initialize(name, species)
    @name = name
    @species = species
  end
  attr_writer :name, species

  def say_species 
    puts self.species
  end

end 