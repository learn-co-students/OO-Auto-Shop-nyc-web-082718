class CarOwner
  @@all = []

  attr_reader :name, :cars

  def initialize(name)
    @name = name
    @cars = []

    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_number_cars
    @@all.map { |o| o.cars.count }.inject(:+) / @@all.count
  end

  def mechanics
    @cars.map { |c| c.mechanic }
  end

  def fix_car(car, mechanic)
    car.mechanic = mechanic
    
    mechanic.cars << car
    mechanic.owners << self
  end

end
