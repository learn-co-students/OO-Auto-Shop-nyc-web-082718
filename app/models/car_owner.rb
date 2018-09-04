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

  def all_cars
    Car.all.select do |car|
      car.car_owner == self
    end
  end

  def all_mechanics
    cars = Car.all.select do |car|
      car.car_owner == self
    end
    cars.map do |car|
      car.mechanic
    end
  end

  def self.average
    total = 0
    self.all.each do |car_owner|
      total += car_owner.all_cars.length
    end
    total/self.all.length
  end

end

# **CarOwner**
#
#   - Get a list of all owners DONE
#
#   - Get a list of all the cars that a specific owner has DONE
#
#   - Get a list of all the mechanics that a specific owner goes to DONE
#
#   - Get the average amount of cars owned for all owners DONE
