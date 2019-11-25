require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("Mari", "Admin", 43)
m2 = Manager.new("Angelica", "Activities", 27)
m3 = Manager.new("Carol", "Marketing", 45)
m4 = Manager.new("Angela", "FD", 42)

e1 = Employee.new("V", 5000, m1)
e2 = Employee.new("Barbie", 2000, m1)
e3 = Employee.new("Lauren", 2000, m2)
e4 = Employee.new("Roger", 3000, m2)
e5 = Employee.new("Vanty", 2000, m4)
e6 = Employee.new("Diane", 10000, m3)

p e1.name
p e1.salary
p e1.manager
p Employee.all


p m1, m2, m3, m4
p m1.name
p m2.department
p m3.age
p Manager.all

p Employee.paid_over(200)

m1.employees

m2.hire_employee("Alice", "5000")

# Manager.average_age
# Employee.find_by_department("Admin")
# Employee.find_by_department("Activities")
p .tax_bracket
# binding.pry
# 0