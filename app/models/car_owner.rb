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

  def owned
    cars = []
    Car.all.each do |details|
      if details.car_owner == self
        cars << details
      end
    end
    cars
  end

  def mechanic
    mechanic = []
    Car.all.each do |details|
      if details.car_owner == self
        mechanic << details.mechanic
      end
    end
    mechanic
  end

  def self.owned_average
    cars_list = []
    Car.all.each do |details|
        cars_list << details
    end
    owner_list = []
    @@all.each do |owners|
      owner_list << owners
    end
    return cars_list.length/owner_list.length
  end

end
