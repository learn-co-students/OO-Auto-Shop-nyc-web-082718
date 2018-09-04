class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def my_cars
    Car.all.select do |car_obj|
      car_obj.owner == self
    end
  end

  def my_mechanics
    my_cars.map do |car_obj|
      car_obj.mechanic
    end
  end

  def self.average_cars
    total_cars = 0
    self.all.each do |owner_obj|
      total_cars += owner_obj.my_cars.size
    end
    total_cars/self.all.size.to_f
    #each owner has a number of cars
    #add togethr the number of cars each owner has
    #take average of sum
  end


end
