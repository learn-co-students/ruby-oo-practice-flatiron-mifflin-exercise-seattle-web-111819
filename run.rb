require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

#Test your code here
d1 = "Accounting"
d2 = "Development"
d3 = "Research"
d4 = "Marketing"

m1 = Manager.new("Cindy", d1, 30)
m2 = Manager.new("Jen", d2, 40)
m3 = Manager.new("Nicole", d3, 50)
m4 = Manager.new("Alice", d4, 60)
m5 = Manager.new("Soundarya", d1, 20)
m6 = Manager.new("Natali", d2, 45)
m7 = Manager.new("Amy", d3, 35)

e1 = Employee.new("Bob", 100, m1)
e2 = Employee.new("Josephine",200, m2)
e3 = Employee.new("Mary", 300, m3)
e4 = Employee.new("Joe", 400, m4)
e5 = Employee.new("Santa", 500, m5)
e6 = Employee.new("Avi", 600, m6)
e7 = Employee.new("Kevin", 700, m7)
e8 = Employee.new("Celine", 800, m7)
e9 = Employee.new("Karl", 900, m7)
e10 = Employee.new("Coco", 1000, m7)
e11 = Employee.new("Lauren", 1100, m6)
e12 = Employee.new("Ralph", 1200, m5)
e13 = Employee.new("Carl", 3000, m4)
e14 = Employee.new("Beyonce", 2000, m3)




binding.pry
puts "done"
