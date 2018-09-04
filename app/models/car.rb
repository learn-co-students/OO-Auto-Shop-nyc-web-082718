class Car

  attr_accessor :make, :model, :car_owner, :mechanic, :classification

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @car_owner = car_owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def mechanic_match
    mechanic_match = []
    Mechanic.all.each do |details|
      if details.specialty == self.classification
        mechanic_match << details
      end
    end
    mechanic_match
  end

end
