# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
d1 = Driver.create(name: "Driver 1", age: 20)
d2 = Driver.create(name: "Driver 2", age: 19)
d3 = Driver.create(name: "Driver 3", age: -19)
d4 = Driver.create(name: "Driver 4", age: 29)

c1 = Car.create(name: "Car 1", brand: "Toyota", mileage: 300, color: "#ab1b3b")
c2 = Car.create(name: "Car 2", brand: "Toyota", mileage: 200, color: "#3f5f6f")
c3 = Car.create(name: "Car 3", brand: "Toyota", mileage: 20, color: "#342414")
c4 = Car.create(name: "Car 4", brand: "Toyota", mileage: 202, color: "#222222")

Rental.skip_callback(:save, :before, :set_late_fee)
Rental.create(driver: d1, car: c1, start: DateTime.now)
Rental.create(driver: d2, car: c2, start: 1.day.ago)
Rental.create(driver: d3, car: c3, start: 2.days.ago)
