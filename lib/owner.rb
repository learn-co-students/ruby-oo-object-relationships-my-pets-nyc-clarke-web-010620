require 'pry'
class Owner
  # code goes here
  
  attr_reader :name, :species
  @@all = []

def initialize(name)
  @name = name
  @species = "human"
  @@all << self
end

def self.all
  @@all
end

def self.count 
  @@all.count
end

def say_species
  "I am a " + @species + "."
end

def self.reset_all
  @@all = []
end

def cats
    Cat.all.select do |cat|
      cat.owner == self
    end  
end

def dogs
    Dog.all.select do |dog|
      dog.owner == self
    end
end

def buy_cat(cat_name)

  cat = Cat.new(cat_name, self)

  # found_cat = Cat.all.find do |cat|
  #   cat.name == cat_obj
  # end

  # found_cat.owner = self
  # binding.pry
  # self.cats
end






def buy_dog(dog_name)
  
  dog = Dog.new(dog_name, self)

end

def walk_dogs
  Dog.all.each do |dog|
    dog.mood = "happy"
  end
end

def feed_cats
  Cat.all.each do |cat|
    cat.mood = "happy"
  end
end

def sell_pets
  self.dogs.each do |dog|
    dog.mood = "nervous"
    dog.owner = nil
  end
  self.cats.each do |cat|
    cat.mood = "nervous"
    cat.owner = nil
  end
end

def list_pets
  "I have #{self.dogs.count} dog(s), and #{self.cats.count} cat(s)."
end



end