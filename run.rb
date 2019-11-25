require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

man1 = Manager.new("Alice", "Department A", 35)
man2 = Manager.new("Bob", "Department B", 44)

emp1 = Employee.new("Caleb", 45000, man1)
emp2 = Employee.new("David", 55000, man1)
emp3 = Employee.new("Ella", 44999, man2)
emp4 = Employee.new("Fiona", 45500, man2)
emp5 = Employee.new("Gabe", 60000, man2)





#Test your code heres


binding.pry
puts "done"
