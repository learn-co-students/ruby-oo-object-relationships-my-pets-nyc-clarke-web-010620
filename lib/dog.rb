class Dog

  attr_accessor :owner, :mood
  attr_reader :name 
  
  @@all = []
  def initialize(name, owner, mood = 'nervous')
    @name = name
    @owner = owner
    @mood = mood

    @@all << self
  end

  def say_mood
    puts @mood
  end

  def self.all
    @@all
  end

  def walk_dog
    @mood = 'happy'
  end

  def sell_dog
    @mood = 'nervous'
    @owner = nil
  end

end