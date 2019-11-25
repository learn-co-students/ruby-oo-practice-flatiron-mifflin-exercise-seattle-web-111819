class Manager

    attr_accessor :name, :department, :age

    @@all = []

    def initialize(name, department, age)
        @name = name 
        @department = department
        @age = age
        @@all << self
    end 

    def self.all
        @@all
    end 

#   return array of all employees of that manager
#   manager --> [employees]
    def employees
        Employee.all.select { |employee| employee.manager == self}
    end 

#   takes in employee name & salary, 
#   adds that employee to list of employees for that manager
    def hire_employee(employee_name, salary)
        Employee.new(employee_name, salary, self)
    end 

#   returns [] of all dep name that every mang oversees
    def self.all_departments
        @@all.map { |manager| manager.department}
    end 

#   return average age of all managers (float)
    def self.average_age
        ages = @@all.map { |manager| manager.age}
        ages.sum/ages.length
    end 

end
