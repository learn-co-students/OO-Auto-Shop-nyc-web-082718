class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  # Get a list of all owners
  def self.all
    @@all
  end

  # Get a list of all the cars that a specific owner has
  def my_cars
    Car.all.select do |car|
      car.owner == self
    end
  end

  # Get a list of all the mechanics that a specific owner goes to
  def my_mechanics
    my_cars.each do |car|
      car.mechanic = car.mechanics.sample
    end.map do |car|
      car.mechanic
    end
  end

  # Get the average amount of cars owned for all owners
  def self.avg_cars
    self.all.reduce(0) do |sum, owner|
      sum += owner.my_cars.length
    end.to_f / self.all.length
  end

end
