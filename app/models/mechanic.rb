class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty
    @@all << self
  end

  def self.all
    @@all
  end

  def cars_serviced
    car_list = []
    Car.all.each do |details|
      if details.mechanic == self
        car_list << details
      end
    end
    car_list
  end

  def clients
    client_list = []
    Car.all.each do |details|
      if details.mechanic == self
        client_list << details.car_owner
      end
    end
    client_list
  end

  def client_names
    client_list = []
    Car.all.each do |details|
      if details.mechanic == self
        client_list << details.car_owner.name
      end
    end
    client_list
  end

end
