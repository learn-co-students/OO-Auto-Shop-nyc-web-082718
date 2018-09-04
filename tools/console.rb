require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

co1 = CarOwner.new("judy")
co2 = CarOwner.new("alex")
co3 = CarOwner.new("john")

m1 = Mechanic.new("louis","antique")
m2 = Mechanic.new("katie","exotic")
m3 = Mechanic.new("ruby","antique")

car1 = Car.new("toyota", "camry", "exotic", co1, m1)
car2 = Car.new("honda", "accord", "clunker", co2, m2)
car3 = Car.new("chevy","malibu", "antique", co3, m3)
car4 = Car.new("chevy","malibu", "antique", co3, m3)


binding.pry
0
