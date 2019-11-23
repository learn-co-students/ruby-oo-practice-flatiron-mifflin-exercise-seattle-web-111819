require_relative "lib/Manager"
require_relative "lib/Employee"

m1 = Manager.new("Abe", 29, "Accounting")
m2 = Manager.new("John", 35, "Janitorial")
m3 = Manager.new("Harry", 43, "Human Resources")

e1 = m1.hire_employee("Dean", 40000)
e2 = m1.hire_employee("Bob", 25000)
e3 = m1.hire_employee("Sam", 52000)
e4 = m2.hire_employee("Will", 75000)
e5 = m2.hire_employee("Susan", 94000)
e6 = m2.hire_employee("Gil", 63000)
e7 = m3.hire_employee("Tom", 60000)
e8 = m3.hire_employee("Ron", 56000)
e9 = m3.hire_employee("Carl", 34000)

