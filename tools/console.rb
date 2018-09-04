require_relative '../config/environment.rb'
require_relative '../app/models/car_owner.rb'
require_relative '../app/models/car.rb'
require_relative '../app/models/mechanic.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("sebastian")
co2 = CarOwner.new("sabrina")
co3 = CarOwner.new("sasha")

m1 = Mechanic.new("spencer", "new")
m2 = Mechanic.new("bentley", "luxury")
m3 = Mechanic.new("dude", "old")

c1 = Car.new("pontiac", "grand am", "old", co1, m3)
c3 = Car.new("mercury", "cougar", "old", co3, m3)
c2 = Car.new("nissan", "versa", "new", co2, m1)

binding.pry
